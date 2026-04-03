$(document).ready(function() {
    // Bilaketa funtzionalitatea (Izena, Abizena, Email)
    $('#bilaketaLangileak').on('keyup', function() {
        let iragazkia = $(this).val().toLowerCase();
        let errenkadak = $('#langileTaula tbody tr');
        
        errenkadak.each(function() {
            let errenkada = $(this);
            let aurkitua = false;
            
            // Bilatu zutabe hauetan: Izena/Abizenak (index 2), Email (index 3)
            [2, 3].forEach(index => {
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
let gorakaLan = true;
let azkenZutabeaLan = -1;

function ordenatuTaula(zutabeIndex) {
    let taula_gorputza = $("#langileTaula tbody");
    let errenkadak = taula_gorputza.find("tr").get();
    
    if (azkenZutabeaLan === zutabeIndex) {
        gorakaLan = !gorakaLan;
    } else {
        gorakaLan = true;
        azkenZutabeaLan = zutabeIndex;
    }
    
    errenkadak.sort((a, b) => {
        let testu_a = $(a).children('td').eq(zutabeIndex).text().trim();
        let testu_b = $(b).children('td').eq(zutabeIndex).text().trim();
        
        // 1. Zenbakizkoak diren begiratu (ID index 1)
        if (zutabeIndex === 1) {
             let zenbaki_a = parseInt(testu_a.replace('#', '')) || 0;
             let zenbaki_b = parseInt(testu_b.replace('#', '')) || 0;
             return gorakaLan ? zenbaki_a - zenbaki_b : zenbaki_b - zenbaki_a;
        }
        
        // 2. Zerbait data itxura badu (YYYY-MM-DD)
        if (testu_a.match(/^\d{4}-\d{2}-\d{2}$/)) {
            let data_a = new Date(testu_a);
            let data_b = new Date(testu_b);
            return gorakaLan ? data_a - data_b : data_b - data_a;
        }
        
        // 3. Testu gisa
        if (testu_a.toLowerCase() < testu_b.toLowerCase()) return gorakaLan ? -1 : 1;
        if (testu_a.toLowerCase() > testu_b.toLowerCase()) return gorakaLan ? 1 : -1;
        return 0;
    });
    
    $.each(errenkadak, function(index, errenkada) {
        taula_gorputza.append(errenkada);
    });
}
