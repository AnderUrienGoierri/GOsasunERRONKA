// neurketak.js

$(document).ready(function() {
    $('#neurketaForm').submit(function(e) {
        let isValid = true;
        let requiresAtLeastOne = false;
        
        const glukosa = $('#glukosa').val();
        const sistolikoa = $('#sistolikoa').val();
        const diastolikoa = $('#diastolikoa').val();
        const pisua = $('#pisua').val();
        const sintomak = $('#sintomak').val();
        
        // Egiaztatu gutxienez datu bat sartu dela
        if (glukosa !== '' || (sistolikoa !== '' && diastolikoa !== '') || pisua !== '' || sintomak !== '') {
            requiresAtLeastOne = true;
        }

        if (!requiresAtLeastOne) {
            e.preventDefault();
            alerta("Gutxienez neurketa edo ohar bat bete behar duzu gordetzeko.");
            return;
        }

        // Glukosa balidazioa (baldin badago)
        if (glukosa !== '') {
            if (parseInt(glukosa) < 20 || parseInt(glukosa) > 600) {
                $('#err-glukosa').show();
                isValid = false;
            } else {
                $('#err-glukosa').hide();
            }
        }

        // Tentsio balidazioa (baldin badago bata, bestea ere behar da)
        if (sistolikoa !== '' || diastolikoa !== '') {
            if (sistolikoa === '' || diastolikoa === '') {
                $('#err-tentsioa').text("Bi balioak (sistolikoa eta diastolikoa) behar dira.").show();
                isValid = false;
            } else if (parseInt(sistolikoa) < 50 || parseInt(diastolikoa) < 30 || parseInt(diastolikoa) >= parseInt(sistolikoa)) {
                $('#err-tentsioa').text("Balio ezegokiak. Sis > Dia izan behar da (Sis > 50, Dia > 30).").show();
                isValid = false;
            } else {
                $('#err-tentsioa').hide();
            }
        }

        // Pisua balidazioa
        if (pisua !== '') {
            let numPisua = parseFloat(pisua.replace(',', '.'));
            if (numPisua < 20 || numPisua > 300) {
                $('#err-pisua').show();
                isValid = false;
            } else {
                $('#err-pisua').hide();
            }
        }

        if (isValid) {
            // Logika hemen: Formularioa bidali aurretik abisuak egiaztatu ditzakegu
            // Edo formularioa bidali ondoren (AJAX bidez bada hobe)
            // Kasu honetan, PHP-k orria birkargatuko duenez, hobe da submit-aren aurretik egitea
            // baina pazient_id behar dugu orrialdetik lortu
            const pazienteId = $('.panel-nagusia').data('paziente-id');
            
            const data = {
                glukosa: glukosa,
                sistolikoa: sistolikoa,
                diastolikoa: diastolikoa,
                pisua: pisua
            };

            egiaztatuAbisuak(pazienteId, data);
        } else {
            e.preventDefault();
        }
    });

    $('input').on('input', function() {
        $(this).closest('.neurketa-kutxa').find('.errore-mezua').hide();
        $('.alerta').slideUp();
    });
});
