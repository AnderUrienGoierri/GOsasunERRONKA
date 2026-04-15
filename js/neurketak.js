// neurketak.js

$(document).ready(function() {
    $('#neurketaForm').submit(function(e) {
        let baliozkoa_da = true;
        let gutxienez_bat_behar_da = false;
        
        const glukosa = $('#glukosa').val();
        const sistolikoa = $('#sistolikoa').val();
        const diastolikoa = $('#diastolikoa').val();
        const pisua = $('#pisua').val();
        const pultsua = $('#pultsua').val();
        const oharrak = $('#sintomak').val();
        const paziente_id_input = $('#paziente_id').val(); // Medikuaren formularioan egon daiteke
        
        // Medikuaren formularioa bada, pazientea hautatua dagoela ziurtatu
        if ($('#paziente_id').length > 0 && !paziente_id_input) {
            e.preventDefault();
            alert("Paziente bat aukeratu behar duzu.");
            return;
        }

        // Egiaztatu gutxienez datu bat sartu dela
        if (glukosa !== '' || (sistolikoa !== '' && diastolikoa !== '') || pisua !== '' || pultsua !== '' || oharrak !== '') {
            gutxienez_bat_behar_da = true;
        }

        if (!gutxienez_bat_behar_da) {
            e.preventDefault();
            if (typeof alerta === 'function') alerta("Gutxienez neurketa edo ohar bat bete behar duzu gordetzeko.");
            else alert("Gutxienez neurketa edo ohar bat bete behar duzu gordetzeko.");
            return;
        }

        // Glukosa balidazioa (baldin badago)
        if (glukosa !== '') {
            if (parseInt(glukosa) < 20 || parseInt(glukosa) > 600) {
                if ($('#err-glukosa').length) $('#err-glukosa').show();
                else alert("Glukosa balio ezegokia.");
                baliozkoa_da = false;
            } else {
                if ($('#err-glukosa').length) $('#err-glukosa').hide();
            }
        }

        // Tentsio balidazioa (baldin badago bata, bestea ere behar da)
        if (sistolikoa !== '' || diastolikoa !== '') {
            if (sistolikoa === '' || diastolikoa === '') {
                if ($('#err-tentsioa').length) $('#err-tentsioa').text("Bi balioak (sistolikoa eta diastolikoa) behar dira.").show();
                else alert("Bi balioak (sistolikoa eta diastolikoa) behar dira.");
                baliozkoa_da = false;
            } else if (parseInt(sistolikoa) < 50 || parseInt(diastolikoa) < 30 || parseInt(diastolikoa) >= parseInt(sistolikoa)) {
                if ($('#err-tentsioa').length) $('#err-tentsioa').text("Balio ezegokiak. Sis > Dia izan behar da (Sis > 50, Dia > 30).").show();
                else alert("Balio ezegokiak. Sis > Dia izan behar da.");
                baliozkoa_da = false;
            } else {
                if ($('#err-tentsioa').length) $('#err-tentsioa').hide();
            }
        }

        // Pisua balidazioa
        if (pisua !== '') {
            let numPisua = parseFloat(pisua.replace(',', '.'));
            if (numPisua < 20 || numPisua > 300) {
                if ($('#err-pisua').length) $('#err-pisua').show();
                else alert("Pisu balio ezegokia.");
                baliozkoa_da = false;
            } else {
                if ($('#err-pisua').length) $('#err-pisua').hide();
            }
        }

        // Pultsua balidazioa
        if (pultsua !== '') {
            let numPultsua = parseInt(pultsua);
            if (numPultsua < 30 || numPultsua > 220) {
                if ($('#err-pultsua').length) $('#err-pultsua').show();
                else alert("Pultsu balio ezegokia (30-220 bpm artean egon behar du).");
                baliozkoa_da = false;
            } else {
                if ($('#err-pultsua').length) $('#err-pultsua').hide();
            }
        }

        if (baliozkoa_da) {
            // Abisuak egiaztatu AJAX bidez
            const pazienteId = paziente_id_input || $('.panel-nagusia').data('paziente-id');
            
            if (pazienteId) {
                const data = {
                    glukosa: glukosa,
                    sistolikoa: sistolikoa,
                    diastolikoa: diastolikoa,
                    pisua: pisua,
                    pultsua: pultsua
                };
                if (typeof egiaztatuAbisuak === 'function') {
                    egiaztatuAbisuak(pazienteId, data);
                }
            }
        } else {
            e.preventDefault();
        }
    });

    $('input').on('input', function() {
        $(this).closest('.neurketa-kutxa').find('.errore-mezua').hide();
        $('.alerta').slideUp();
    });
});
