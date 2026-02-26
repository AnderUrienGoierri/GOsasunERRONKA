/**
 * Aldatu mezu fitxen artean
 * @param {string} id - Erakutsi nahi den fitxaren ID-a
 */
function fitxaAldatu(id) {
    // Edukiak ezkutatu
    $('.fitxa-edukia').removeClass('aktiboa');
    // Botoi guztien egoera kendu
    $('.fitxa-botoia').removeClass('aktiboa');
    
    // Aukeratutakoa erakutsi
    $('#' + id).addClass('aktiboa');
    
    // Klik egin den botoia markatu
    // event.currentTarget erabili daiteke inline onclick-ean pass egiten ez bada
    if (window.event && window.event.currentTarget) {
        $(window.event.currentTarget).addClass('aktiboa');
    }
}
