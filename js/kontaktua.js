// Kontaktua page specific scripts
$(document).ready(function() {
    $('#kontaktuaForm').submit(function(e) {
        
        let isValid = true;
        
        // Balidazioa: Izena
        const izena = $('#izena').val().trim();
        if (izena === '') {
            $('#error-izena').show();
            isValid = false;
        } else {
            $('#error-izena').hide();
        }
        
        // Balidazioa: E-posta
        const email = $('#email').val().trim();
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (email === '' || !emailRegex.test(email)) {
            $('#error-email').show();
            isValid = false;
        } else {
            $('#error-email').hide();
        }
        
        // Balidazioa: Mezua
        const mezua = $('#mezua').val().trim();
        if (mezua.length < 10) {
            $('#error-mezua').show();
            isValid = false;
        } else {
            $('#error-mezua').hide();
        }
        
        // Dena ondo badago, utzi bektor berezko API prozesamenduarekin
        if (!isValid) {
            e.preventDefault();
        }
    });

    // Input-ean idaztean akatsa kentzeko
    $('input, textarea').on('input', function() {
        $(this).siblings('.errore-mezua').hide();
    });
});
