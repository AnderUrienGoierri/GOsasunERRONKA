$(document).ready(function() {
    // Bilaketa funtzionalitatea
    $('#bilaketaPazienteak').on('keyup', function() {
        let iragazkia = $(this).val().toLowerCase();
        let errenkadak = $('#pazienteTaula taula_gorputza tr');
        
        errenkadak.each(function() {
            let errenkada = $(this);
            // Izena 3. zutabean dago (index 2)
            let izen_testua = errenkada.find('td').eq(2).text().toLowerCase();
            // NAN 4. zutabean (index 3)
            let nan_testua = errenkada.find('td').eq(3).text().toLowerCase();
            
            if (izen_testua.includes(iragazkia) || nan_testua.includes(iragazkia)) {
                errenkada.show();
            } else {
                errenkada.hide();
            }
        });
    });
});

// Ordenazio funtzionalitatea
let goraka = true;
function ordenatuTaula(zutabeIndex) {
    let taula_gorputza = $("#pazienteTaula taula_gorputza");
    let errenkadak = taula_gorputza.find("tr").get();
    
    errenkadak.sort((a, b) => {
        let testu_a = $(a).children('td').eq(zutabeIndex).text().trim();
        let testu_b = $(b).children('td').eq(zutabeIndex).text().trim();
        
        // ID bada (Zutabe 1), zenbaki gisa ordenatu
        if(zutabeIndex === 1) {
             let zenbaki_a = parseInt(testu_a.replace('#', '')) || 0;
             let zenbaki_b = parseInt(testu_b.replace('#', '')) || 0;
             return goraka ? zenbaki_a - zenbaki_b : zenbaki_b - zenbaki_a;
        }
        
        if (testu_a < testu_b) return goraka ? -1 : 1;
        if (testu_a > testu_b) return goraka ? 1 : -1;
        return 0;
    });
    
    goraka = !goraka; 
    $.each(errenkadak, function(index, errenkada) {
        taula_gorputza.append(errenkada);
    });
}
