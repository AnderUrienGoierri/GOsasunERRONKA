// mediku_neurketak.js

$(document).ready(function() {
    $('#neurketaForm').submit(function(e) {
        let baliozkoa_da = true;
        let gutxienez_bat_behar_da = false;
        
        const glukosa = $('#glukosa').val();
        const sistolikoa = $('#sistolikoa').val();
        const diastolikoa = $('#diastolikoa').val();
        const pisua = $('#pisua').val();
        const sintomak = $('#sintomak').val();
        const paziente_id = $('#paziente_id').val();
        
        if (!paziente_id) {
            e.preventDefault();
            alert("Paziente bat aukeratu behar duzu.");
            return;
        }

        // Egiaztatu gutxienez datu bat sartu dela
        if (glukosa !== '' || (sistolikoa !== '' && diastolikoa !== '') || pisua !== '' || sintomak !== '') {
            gutxienez_bat_behar_da = true;
        }

        if (!gutxienez_bat_behar_da) {
            e.preventDefault();
            alert("Gutxienez neurketa edo ohar bat bete behar duzu gordetzeko.");
            return;
        }

        // Tentsio balidazioa (baldin badago bata, bestea ere behar da)
        if (sistolikoa !== '' || diastolikoa !== '') {
            if (sistolikoa === '' || diastolikoa === '') {
                alert("Bi balioak (sistolikoa eta diastolikoa) behar dira.");
                baliozkoa_da = false;
            } else if (parseInt(sistolikoa) < 50 || parseInt(diastolikoa) < 30 || parseInt(diastolikoa) >= parseInt(sistolikoa)) {
                alert("Balio ezegokiak. Sis > Dia izan behar da (Sis > 50, Dia > 30).");
                baliozkoa_da = false;
            }
        }

        if (pisua !== '') {
            let numPisua = parseFloat(pisua.replace(',', '.'));
            if (numPisua < 20 || numPisua > 300) {
                alert("Pisu balio ezegokia.");
                baliozkoa_da = false;
            }
        }

        if (!baliozkoa_da) {
            e.preventDefault();
        }
    });
});
