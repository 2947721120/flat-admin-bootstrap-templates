$(function () {
    $('.navbar-toggle').click(function () {
        $('.navbar-nav').toggleClass('slide-in');
        $('.side-body').toggleClass('body-slide-in');
        $('#search').removeClass('in').addClass('collapse').slideUp(200);
    });
   
   $('.navbar-expand-toggle').click(function () {
        $('.navbar-expand-toggle').toggleClass('fa-rotate-90');
        $('.content-container').toggleClass('expanded');
    });
});