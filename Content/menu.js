$(function () {
    $('.nav').on('click', '#hamburger', function () {
        $('#menu').toggle().addClass('show-menu');
    });
});

window.addEventListener('resize', function () {
    if (window.innerWidth > 480) {
        $('#menu').removeClass('show-menu');
    } else {
        $('#menu').addClass('show-menu');
    }
});

$('#userMenu').click(function () { 
    $('.user-menu').toggleClass('show');
});