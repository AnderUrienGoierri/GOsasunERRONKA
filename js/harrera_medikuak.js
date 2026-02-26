$(document).ready(function() {
    // Bilaketa funtzionalitatea
    $('#bilaketaMedikuak').on('keyup', function() {
        let filter = $(this).val().toLowerCase();
        let rows = $('#medikuTaula tbody tr');
        
        rows.each(function() {
            let row = $(this);
            // Izena 2. zutabean dago (index 1)
            let nameText = row.find('td').eq(1).text().toLowerCase();
            // Espezialitatea 3. zutabean (index 2)
            let espText = row.find('td').eq(2).text().toLowerCase();
            
            if (nameText.includes(filter) || espText.includes(filter)) {
                row.show();
            } else {
                row.hide();
            }
        });
    });
});

// Ordenazio funtzionalitatea
let gorakaMedikuak = true;
function ordenatuTaula(zutabeIndex) {
    let tbody = $("#medikuTaula tbody");
    let rows = tbody.find("tr").get();
    
    rows.sort((a, b) => {
        let textA = $(a).children('td').eq(zutabeIndex).text().trim();
        let textB = $(b).children('td').eq(zutabeIndex).text().trim();
        
        if (textA < textB) return gorakaMedikuak ? -1 : 1;
        if (textA > textB) return gorakaMedikuak ? 1 : -1;
        return 0;
    });
    
    gorakaMedikuak = !gorakaMedikuak; 
    $.each(rows, function(index, row) {
        tbody.append(row);
    });
}
