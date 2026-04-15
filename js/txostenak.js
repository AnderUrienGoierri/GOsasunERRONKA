// js/txostenak.js

function irekiTxostenModala() {
    document.getElementById('txostenModala').style.display = 'block';
}

function itxiTxostenModala() {
    document.getElementById('txostenModala').style.display = 'none';
    document.getElementById('report_status').style.display = 'none';
}

function toggleGrafikaOptions() {
    const chk = document.getElementById('chk_grafikak');
    document.getElementById('grafika_aukerak').style.display = chk.checked ? 'block' : 'none';
}

function setPresetDate(type) {
    const now = new Date();
    const endInput = document.getElementById('txosten_amaiera');
    const startInput = document.getElementById('txosten_hasiera');
    
    endInput.value = now.toISOString().split('T')[0];
    
    let start = new Date();
    if (type === 'gaur') {
        // start is now
    } else if (type === 'astea') {
        start.setDate(now.getDate() - 7);
    } else if (type === 'hilabetea') {
        start.setMonth(now.getMonth() - 1);
    } else if (type === 'dena') {
        startInput.value = '';
        return;
    }
    startInput.value = start.toISOString().split('T')[0];
}

async function hasiTxostenSorkuntza() {
    const p_id = document.getElementById('txosten_paziente_id').value;
    const h_data = document.getElementById('txosten_hasiera').value;
    const a_data = document.getElementById('txosten_amaiera').value;
    const t_izena = document.getElementById('txosten_izena').value || "Paziente Txostena";
    
    const sections = Array.from(document.querySelectorAll('input[name="sections"]:checked')).map(cb => cb.value);
    const charts = Array.from(document.querySelectorAll('input[name="charts"]:checked')).map(cb => cb.value);

    if (sections.length === 0) {
        alert("Mesedez, hautatu gutxienez atal bat txostenean sartzeko.");
        return;
    }

    const status = document.getElementById('report_status');
    const statusText = document.getElementById('report_status_text');
    status.style.display = 'block';
    statusText.textContent = "Datuak kargatzen...";

    try {
        // 1. Fetch data for sections
        const response = await fetch(`../php_orri_laguntzaileak/lortu_inprimatzeko_sekzioak.php?paziente_id=${p_id}&h_data=${h_data}&a_data=${a_data}&sections=${sections.join(',')}`);
        const result = await response.json();

        if (!result.success) throw new Error(result.error);

        // 2. Build the Hidden Report Container
        const container = document.getElementById('hidden_report_container');
        container.innerHTML = `
            ${result.sections.branding}
            ${result.sections.patient_summary}
            <div style="margin-bottom: 30px; padding: 15px; background: #f8fafc; border-radius: 8px;">
                <h2 style="margin: 0; font-size: 18px; color: #1e293b;">${t_izena}</h2>
                <p style="margin: 5px 0 0 0; font-size: 12px; color: #475569;">
                    Epea: ${h_data || 'Hasieratik'} - ${a_data || 'Gaur arte'}
                </p>
            </div>
        `;

        // Add sections
        sections.forEach(s => {
            if (s !== 'grafikak' && result.sections[s]) {
                container.innerHTML += `<div style="margin-bottom: 40px;">${result.sections[s]}</div>`;
            }
        });

        // 3. Handle Charts (if selected)
        if (sections.includes('grafikak') && charts.length > 0 && result.sections.jarraipenak_raw) {
            statusText.textContent = "Grafikak sortzen...";
            container.innerHTML += `<h3 style="color: #0369a1; border-bottom: 2px solid #0369a1; padding-bottom: 5px; margin-top: 40px;">Bilakaera Grafikoak</h3>`;
            
            const rawData = result.sections.jarraipenak_raw.reverse(); // Chronological for charts
            
            for (const chartType of charts) {
                const canvasId = `chart_${chartType}`;
                container.innerHTML += `<div style="margin-bottom: 30px; width: 100%;">
                                            <canvas id="${canvasId}" width="800" height="400"></canvas>
                                         </div>`;
                
                // We need to render the chart AFTER it's in the DOM
                await new Promise(resolve => setTimeout(resolve, 300));
                
                const canvasEl = document.getElementById(canvasId);
                const ctx = canvasEl.getContext('2d');
                let datasets = [];
                let labels = rawData.map(d => d.erregistro_data.split(' ')[0]);

                if (chartType === 'tentsioa') {
                    datasets = [
                        { label: 'Sistolikoa', data: rawData.map(d => d.tentsio_sistolikoa), borderColor: '#dc3545', backgroundColor: '#dc3545', tension: 0.1, fill: false },
                        { label: 'Diastolikoa', data: rawData.map(d => d.tentsio_diastolikoa), borderColor: '#17a2b8', backgroundColor: '#17a2b8', tension: 0.1, fill: false }
                    ];
                } else {
                    const config = {
                        'pisua_kg': { label: 'Pisua (kg)', color: '#2563eb' },
                        'pultsua_ppm': { label: 'Pultsua (ppm)', color: '#d97706' },
                        'altuera': { label: 'Altuera (cm)', color: '#059669' }
                    };
                    datasets = [{
                        label: config[chartType].label,
                        data: rawData.map(d => d[chartType]),
                        borderColor: config[chartType].color,
                        backgroundColor: config[chartType].color,
                        tension: 0.1,
                        fill: false
                    }];
                }

                new Chart(ctx, {
                    type: 'line',
                    data: { labels, datasets },
                    options: {
                        responsive: false, // Use hardcoded width/height for PDF stability
                        maintainAspectRatio: true,
                        animation: false,
                        plugins: { 
                            legend: { position: 'top', labels: { boxWidth: 12, font: { size: 10 } } } 
                        },
                        scales: {
                            y: { beginAtZero: false, ticks: { font: { size: 9 } } },
                            x: { ticks: { font: { size: 9 } } }
                        }
                    }
                });
                
                // Wait for chart to settle
                await new Promise(resolve => setTimeout(resolve, 300));
            }
        }

        // 4. Generate PDF
        statusText.textContent = "PDF-a sortzen... (Hau luzeagoa izan daiteke)";
        
        // Ensure the container is "visible" for html2canvas
        // We move it from off-screen to a visible but hidden state if needed
        container.style.position = 'fixed';
        container.style.top = '0';
        container.style.left = '0';
        container.style.zIndex = '-9999';
        container.style.visibility = 'visible';
        container.style.opacity = '1';

        const opt = {
            margin:       10,
            filename:     t_izena.replace(/\s+/g, '_') + '.pdf',
            image:        { type: 'jpeg', quality: 0.98 },
            html2canvas:  { 
                scale: 2, 
                useCORS: true, 
                allowTaint: true,
                letterRendering: true,
                logging: false
            },
            jsPDF:        { unit: 'mm', format: 'a4', orientation: 'portrait' }
        };

        // Wait for EVERYTHING to be stable
        await new Promise(resolve => setTimeout(resolve, 800));
        
        const pdfBlob = await html2pdf().set(opt).from(container).output('blob');
        
        // Restore container hidden state
        container.style.position = 'fixed';
        container.style.top = '-10000px';

        // 5. Upload to pdf_sortu.php
        statusText.textContent = "Zure txostena gorde eta prestatzen...";
        const c_jarraipen = document.getElementById('create_jarraipen')?.checked ? 1 : 0;
        const formData = new FormData();
        formData.append('pdf', pdfBlob, opt.filename);
        formData.append('paziente_id', p_id);
        formData.append('txosten_izena', t_izena);
        formData.append('create_jarraipen', c_jarraipen);

        const uploadResp = await fetch('../php_orri_laguntzaileak/pdf_sortu.php', {
            method: 'POST',
            body: formData
        });
        const uploadResult = await uploadResp.json();

        if (uploadResult.success) {
            // Build a reliable absolute web URL
            const urlParts = window.location.pathname.split('/');
            // Expecting: ["", "GOsasun_web", "php_osasun_langileak", "txostena_eraiki.php"]
            // We want everything up to the project root (GOsasun_web)
            const rootIndex = urlParts.indexOf('GOsasun_web');
            const basePath = rootIndex !== -1 ? urlParts.slice(0, rootIndex + 1).join('/') + '/' : '/';
            const fullUrl = window.location.origin + basePath + uploadResult.url;

            status.innerHTML = `<p style="color: #059669; font-weight: bold;">Txostena ondo sortu da!</p>
                                <a href="${fullUrl}" target="_blank" style="color: #0369a1; text-decoration: underline;">Klikatu hemen ikusteko</a>`;
            
            // Auto download
            const link = document.createElement('a');
            link.href = fullUrl;
            link.download = uploadResult.filename;
            document.body.appendChild(link);
            link.click();
            document.body.removeChild(link);
        } else {
            throw new Error(uploadResult.error);
        }

    } catch (err) {
        console.error(err);
        status.innerHTML = `<p style="color: #dc2626;">Errorea: ${err.message}</p>`;
    }
}
