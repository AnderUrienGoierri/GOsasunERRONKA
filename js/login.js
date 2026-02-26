$(document).ready(function() {
    $('#loginForm').submit(function(e) {
        let baliozkoa_da = true;
        
        // Balidazioa: E-posta
        const email = $('#email').val().trim();
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (email === '' || !emailRegex.test(email)) {
            $('#error-login-email').show();
            baliozkoa_da = false;
        } else {
            $('#error-login-email').hide();
        }
        
        // Balidazioa: Pasahitza
        const pasahitza = $('#pasahitza').val().trim();
        if (pasahitza === '') {
            $('#error-login-pass').show();
            baliozkoa_da = false;
        } else {
            $('#error-login-pass').hide();
        }
        
        // Ajax ez da beharrezkoa hemen, PHPk egingo duelako redirect-a backend-etik
        // Soilik balidazio errorea baldin badago gelditu egingo da
        if (!baliozkoa_da) {
            e.preventDefault(); 
        }
    });

    $('input').on('input', function() {
        $(this).next('.errore-mezua').hide();
        // PHP-k sortutako errore-mezua ezkutatu idazten hastean
        $('.alerta-errorea').slideUp(); 
    });
});
