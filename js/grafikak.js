// js/grafikak.js
$(document).ready(function() {
    let myChart = null;
    const canvas = document.getElementById('osabide-grafika');
    if (!canvas) return; // Exit ez badago margotzeko lekurik
    const ctx = canvas.getContext('2d');
    
    // Initial draw
    drawChart('pisua');
    
    // Handle select change
    $('#datu-mota').on('change', function() {
        drawChart($(this).val());
    });
    
    // Function to draw chart based on type
    function drawChart(type) {
        // neurketakData exists in global scope via PHP
        if (typeof neurketakData === 'undefined' || neurketakData.length === 0) return;
        
        const labels = neurketakData.map(errenkada => errenkada.data);
        let datasets = [];
        
        if (type === 'pisua') {
            datasets = [{
                label: 'Pisua (kg)',
                data: neurketakData.map(errenkada => parseFloat(errenkada.pisua_kg)),
                borderColor: '#007bff',
                backgroundColor: 'rgba(0, 123, 255, 0.1)',
                borderWidth: 2,
                fill: true,
                tension: 0.3
            }];
        } else if (type === 'tentsioa') {
            datasets = [
                {
                    label: 'Tentsio Sistolikoa ',
                    data: neurketakData.map(errenkada => parseInt(errenkada.tentsio_sistolikoa)),
                    borderColor: '#dc3545',
                    backgroundColor: 'rgba(220, 53, 69, 0.1)',
                    borderWidth: 2,
                    fill: false,
                    tension: 0.1
                },
                {
                    label: 'Tentsio Diastolikoa',
                    data: neurketakData.map(errenkada => parseInt(errenkada.tentsio_diastolikoa)),
                    borderColor: '#17a2b8',
                    backgroundColor: 'rgba(23, 162, 184, 0.1)',
                    borderWidth: 2,
                    fill: false,
                    tension: 0.1
                }
            ];
        } else if (type === 'glukosa') {
            datasets = [{
                label: 'Glukosa (mg/dl)',
                data: neurketakData.map(errenkada => parseFloat(errenkada.glukosa_mg_dl)),
                borderColor: '#28a745',
                backgroundColor: 'rgba(40, 167, 69, 0.1)',
                borderWidth: 2,
                fill: true,
                tension: 0.3
            }];
        }
        
        // Destroy existing chart to prevent overlap bugs
        if (myChart) {
            myChart.destroy();
        }
        
        // Create new Chart.js instance
        myChart = new Chart(ctx, {
            type: 'line',
            data: {
                labels: labels,
                datasets: datasets
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                scales: {
                    y: {
                        beginAtZero: false
                    }
                }
            }
        });
    }

    // PDF Deskargatu logika html2pdf erabiliz
    $('#btn-deskargatu-pdf').on('click', function() {
        const element = document.getElementById('pdf-eremua');
        const alerta = $('#alerta-eremua');
        
        // Hide UI controls using CSS display tracking or html2pdf ignore property 
        // We set data-html2canvas-ignore="true" in PHP on non-printable elements
        
        alerta.html('<div class="kargatzen-mezua">PDF-a sortzen ari da, itxaron momentu bat mesedez...</div>');
        
        const dateObj = new Date();
        const dateStr = dateObj.getFullYear() + "-" + (dateObj.getMonth()+1) + "-" + dateObj.getDate();
        
        const opt = {
            margin:       15,
            filename:     'grafika_' + dateStr + '.pdf',
            image:        { type: 'jpeg', quality: 0.98 },
            html2canvas:  { scale: 2, useCORS: true },
            jsPDF:        { unit: 'mm', format: 'a4', orientation: 'landscape' }
        };

        // Output generating a blob and sending it via AJAX to pdf_sortu.php
        html2pdf().set(opt).from(element).output('blob').then(function(pdfBlob) {
            let formData = new FormData();
            formData.append('pdf', pdfBlob, opt.filename);
            
            // Send patient ID if available (from global context)
            if (typeof paziente_id !== 'undefined' && paziente_id !== 'null') {
                formData.append('paziente_id', paziente_id);
            }
            
            $.ajax({
                url: pdfEndpoint,
                type: 'POST',
                data: formData,
                processData: false,
                contentType: false,
                success: function(response) {
                    try {
                        let res = JSON.parse(response);
                        if(res.success) {
                            alerta.html('<div class="alerta alerta-arrakasta">' + res.msg + ' <b><a href="../' + res.url + '" target="_blank">Egin klik hemen ikusteko</a></b></div>');
                            
                            // Auto-download to the local OS file system
                            const link = document.createElement('a');
                            link.href = '../' + res.url;
                            link.download = res.filename;
                            document.body.appendChild(link);
                            link.click();
                            document.body.removeChild(link);
                        } else {
                            alerta.html('<div class="alerta alerta-errorea">' + res.error + '</div>');
                        }
                    } catch(e) {
                        alerta.html('<div class="alerta alerta-errorea">Errorea zerbitzariaren erantzunean (' + e.message + ').</div>');
                    }
                },
                error: function(xhr, status, error) {
                    alerta.html('<div class="alerta alerta-errorea">Errorea PDF-a gordetzean (' + error + '). Egiaztatu pdf_bezero_txostenak/ karpeta.</div>');
                }
            });
        });
    });
});

