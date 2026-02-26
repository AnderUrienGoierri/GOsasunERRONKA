/**
 * egiaztatuAbisuak
 * Triggerraren logika JS-n.
 */
function egiaztatuAbisuak(pazienteId, data) {
    const abisuak = [];

    // 1. Tentsio Sistolikoa
    if (data.sistolikoa > 140) {
        abisuak.push({
            mota: 'Tentsioa',
            testua: `Tentsio sistolikoa altua da: ${data.sistolikoa} mmHg`
        });
    } else if (data.sistolikoa < 90 && data.sistolikoa !== null && data.sistolikoa !== "") {
        abisuak.push({
            mota: 'Tentsioa',
            testua: `Tentsio sistolikoa baxua da: ${data.sistolikoa} mmHg`
        });
    }

    // 2. Tentsio Diastolikoa
    if (data.diastolikoa > 90) {
        abisuak.push({
            mota: 'Tentsioa',
            testua: `Tentsio diastolikoa altua da: ${data.diastolikoa} mmHg`
        });
    } else if (data.diastolikoa < 60 && data.diastolikoa !== null && data.diastolikoa !== "") {
        abisuak.push({
            mota: 'Tentsioa',
            testua: `Tentsio diastolikoa baxua da: ${data.diastolikoa} mmHg`
        });
    }

    // 3. Glukosa
    if (data.glukosa > 125) {
        abisuak.push({
            mota: 'Glukosa',
            testua: `Glukosa maila altua da: ${data.glukosa} mg/dL`
        });
    } else if (data.glukosa < 70 && data.glukosa !== null && data.glukosa !== "") {
        abisuak.push({
            mota: 'Glukosa',
            testua: `Glukosa maila baxua da: ${data.glukosa} mg/dL`
        });
    }

    // 4. Pisua
    if (data.pisua > 150) {
        abisuak.push({
            mota: 'Pisua',
            testua: `Pisua altua da: ${data.pisua} kg`
        });
    } else if (data.pisua < 45 && data.pisua !== null && data.pisua !== "") {
        abisuak.push({
            mota: 'Pisua',
            testua: `Pisua baxua da: ${data.pisua} kg`
        });
    }

    // Bidali abisu bakoitza API-ra
    abisuak.forEach(abisu => {
        const formData = new FormData();
        formData.append('paziente_id', pazienteId);
        formData.append('mota', abisu.mota);
        formData.append('testua', abisu.testua);

        fetch('../php_laguntzaileak/abisu_sortu_api.php', {
            method: 'POST',
            body: formData
        })
        .then(res => res.json())
        .then(data => {
            if (data.success) {
                console.log('Abisua gordeta:', abisu.testua);
            } else {
                console.error('Errorea abisua gordetzean:', data.message);
            }
        });
    });
}

