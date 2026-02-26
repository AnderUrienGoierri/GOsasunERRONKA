$(document).ready(function() {
    // Mobile menu toggle
    $('.menu-botoia').click(function() {
        $('.nabigazio-estekak').toggleClass('aktiboa');
    });

    // Close menu when clicking outside
    $(document).click(function(event) {
        if (!$(event.target).closest('header').length) {
            $('.nabigazio-estekak').removeClass('aktiboa');
        }
    });
});
