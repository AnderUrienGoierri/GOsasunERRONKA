$(document).ready(function() {
    // Bilaketa funtzionalitatea
    $('#bilaketaPazienteak').on('keyup', function() {
        let filter = $(this).val().toLowerCase();
        let rows = $('#pazienteTaula tbody tr');
        
        rows.each(function() {
            let row = $(this);
            // Izena 3. zutabean dago (index 2)
            let nameText = row.find('td').eq(2).text().toLowerCase();
            // NAN 4. zutabean (index 3)
            let nanText = row.find('td').eq(3).text().toLowerCase();
            
            if (nameText.includes(filter) || nanText.includes(filter)) {
                row.show();
            } else {
                row.hide();
            }
        });
    });
});

// Ordenazio funtzionalitatea
let goraka = true;
function ordenatuTaula(zutabeIndex) {
    let tbody = $("#pazienteTaula tbody");
    let rows = tbody.find("tr").get();
    
    rows.sort((a, b) => {
        let textA = $(a).children('td').eq(zutabeIndex).text().trim();
        let textB = $(b).children('td').eq(zutabeIndex).text().trim();
        
        // ID bada (Zutabe 1), zenbaki gisa ordenatu
        if(zutabeIndex === 1) {
             let numA = parseInt(textA.replace('#', '')) || 0;
             let numB = parseInt(textB.replace('#', '')) || 0;
             return goraka ? numA - numB : numB - numA;
        }
        
        if (textA < textB) return goraka ? -1 : 1;
        if (textA > textB) return goraka ? 1 : -1;
        return 0;
    });
    
    goraka = !goraka; 
    $.each(rows, function(index, row) {
        tbody.append(row);
    });
}
