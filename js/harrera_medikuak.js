$(document).ready(function() {
    // Bilaketa funtzionalitatea
    $('#bilaketaMedikuak').on('keyup', function() {
        let iragazkia = $(this).val().toLowerCase();
        let errenkadak = $('#medikuTaula taula_gorputza tr');
        
        errenkadak.each(function() {
            let errenkada = $(this);
            // Izena 2. zutabean dago (index 1)
            let izen_testua = errenkada.find('td').eq(1).text().toLowerCase();
            // Espezialitatea 3. zutabean (index 2)
            let esp_testua = errenkada.find('td').eq(2).text().toLowerCase();
            
            if (izen_testua.includes(iragazkia) || esp_testua.includes(iragazkia)) {
                errenkada.show();
            } else {
                errenkada.hide();
            }
        });
    });
});

// Ordenazio funtzionalitatea
let gorakaMedikuak = true;
function ordenatuTaula(zutabeIndex) {
    let taula_gorputza = $("#medikuTaula taula_gorputza");
    let errenkadak = taula_gorputza.find("tr").get();
    
    errenkadak.sort((a, b) => {
        let testu_a = $(a).children('td').eq(zutabeIndex).text().trim();
        let testu_b = $(b).children('td').eq(zutabeIndex).text().trim();
        
        if (testu_a < testu_b) return gorakaMedikuak ? -1 : 1;
        if (testu_a > testu_b) return gorakaMedikuak ? 1 : -1;
        return 0;
    });
    
    gorakaMedikuak = !gorakaMedikuak; 
    $.each(errenkadak, function(index, errenkada) {
        taula_gorputza.append(errenkada);
    });
}
