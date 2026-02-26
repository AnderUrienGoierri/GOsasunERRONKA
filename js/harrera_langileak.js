$(document).ready(function() {
    // Bilaketa funtzionalitatea
    $('#bilaketaLangileak').on('keyup', function() {
        let filter = $(this).val().toLowerCase();
        let rows = $('#langileTaula tbody tr');
        
        // Ez egin ezer taula hutsik badago
        if(rows.length === 1 && rows.find('td').length === 1) return;
        
        rows.each(function() {
            let row = $(this);
            let nameText = row.find('td').eq(2).text().toLowerCase();
            let emailText = row.find('td').eq(3).text().toLowerCase();
            
            if (nameText.includes(filter) || emailText.includes(filter)) {
                row.show();
            } else {
                row.hide();
            }
        });
    });
});

// Ordenazio funtzionalitatea
let gorakaLangileak = true;
function ordenatuTaula(zutabeIndex) {
    let tbody = $("#langileTaula tbody");
    let rows = tbody.find("tr").get();
    
    if(rows.length === 1 && $(rows[0]).find('td').length === 1) return;
    
    rows.sort((a, b) => {
        let textA = $(a).children('td').eq(zutabeIndex).text().trim();
        let textB = $(b).children('td').eq(zutabeIndex).text().trim();
        
        if(zutabeIndex === 1) { // ID
             let numA = parseInt(textA.replace('#', '')) || 0;
             let numB = parseInt(textB.replace('#', '')) || 0;
             return gorakaLangileak ? numA - numB : numB - numA;
        }
        
        if (textA < textB) return gorakaLangileak ? -1 : 1;
        if (textA > textB) return gorakaLangileak ? 1 : -1;
        return 0;
    });
    
    gorakaLangileak = !gorakaLangileak; 
    $.each(rows, function(index, row) {
        tbody.append(row);
    });
}
