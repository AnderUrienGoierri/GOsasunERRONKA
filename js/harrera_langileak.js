$(document).ready(function() {
    // Bilaketa funtzionalitatea
    $('#bilaketaLangileak').on('keyup', function() {
        let iragazkia = $(this).val().toLowerCase();
        let errenkadak = $('#langileTaula taula_gorputza tr');
        
        // Ez egin ezer taula hutsik badago
        if(errenkadak.length === 1 && errenkadak.find('td').length === 1) return;
        
        errenkadak.each(function() {
            let errenkada = $(this);
            let izen_testua = errenkada.find('td').eq(2).text().toLowerCase();
            let email_testua = errenkada.find('td').eq(3).text().toLowerCase();
            
            if (izen_testua.includes(iragazkia) || email_testua.includes(iragazkia)) {
                errenkada.show();
            } else {
                errenkada.hide();
            }
        });
    });
});

// Ordenazio funtzionalitatea
let gorakaLangileak = true;
function ordenatuTaula(zutabeIndex) {
    let taula_gorputza = $("#langileTaula taula_gorputza");
    let errenkadak = taula_gorputza.find("tr").get();
    
    if(errenkadak.length === 1 && $(errenkadak[0]).find('td').length === 1) return;
    
    errenkadak.sort((a, b) => {
        let testu_a = $(a).children('td').eq(zutabeIndex).text().trim();
        let testu_b = $(b).children('td').eq(zutabeIndex).text().trim();
        
        if(zutabeIndex === 1) { // ID
             let zenbaki_a = parseInt(testu_a.replace('#', '')) || 0;
             let zenbaki_b = parseInt(testu_b.replace('#', '')) || 0;
             return gorakaLangileak ? zenbaki_a - zenbaki_b : zenbaki_b - zenbaki_a;
        }
        
        if (testu_a < testu_b) return gorakaLangileak ? -1 : 1;
        if (testu_a > testu_b) return gorakaLangileak ? 1 : -1;
        return 0;
    });
    
    gorakaLangileak = !gorakaLangileak; 
    $.each(errenkadak, function(index, errenkada) {
        taula_gorputza.append(errenkada);
    });
}
