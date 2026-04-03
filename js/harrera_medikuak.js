$(document).ready(function() {
    // Bilaketa funtzionalitatea (Izena, Abizena, Email, Espezialitatea)
    $('#bilaketaMedikuak').on('keyup', function() {
        let iragazkia = $(this).val().toLowerCase();
        let errenkadak = $('#medikuTaula tbody tr');
        
        errenkadak.each(function() {
            let errenkada = $(this);
            let aurkitua = false;
            
            // Bilatu zutabe hauetan: Izena/Abizenak (index 2), Email (index 3), Espezialitatea (index 4)
            [2, 3, 4].forEach(index => {
                let td = errenkada.find('td').eq(index);
                if (td.length > 0) {
                    let testua = td.text().toLowerCase();
                    if (testua.includes(iragazkia)) aurkitua = true;
                }
            });
            
            if (aurkitua) {
                errenkada.show();
            } else {
                errenkada.hide();
            }
        });
    });
});

// Ordenazio funtzionalitatea
let gorakaMed = true;
let azkenZutabeaMed = -1;

function ordenatuTaula(zutabeIndex) {
    let taula_gorputza = $("#medikuTaula tbody");
    let errenkadak = taula_gorputza.find("tr").get();
    
    if (azkenZutabeaMed === zutabeIndex) {
        gorakaMed = !gorakaMed;
    } else {
        gorakaMed = true;
        azkenZutabeaMed = zutabeIndex;
    }
    
    errenkadak.sort((a, b) => {
        let testu_a = $(a).children('td').eq(zutabeIndex).text().trim();
        let testu_b = $(b).children('td').eq(zutabeIndex).text().trim();
        
        // 1. Zenbakizkoak diren begiratu (ID index 1, Elkargokide Zkia index 5)
        if (zutabeIndex === 1 || zutabeIndex === 5) {
             let zenbaki_a = parseInt(testu_a.replace('#', '')) || 0;
             let zenbaki_b = parseInt(testu_b.replace('#', '')) || 0;
             return gorakaMed ? zenbaki_a - zenbaki_b : zenbaki_b - zenbaki_a;
        }
        
        // 2. Testu gisa
        if (testu_a.toLowerCase() < testu_b.toLowerCase()) return gorakaMed ? -1 : 1;
        if (testu_a.toLowerCase() > testu_b.toLowerCase()) return gorakaMed ? 1 : -1;
        return 0;
    });
    
    $.each(errenkadak, function(index, errenkada) {
        taula_gorputza.append(errenkada);
    });
}
