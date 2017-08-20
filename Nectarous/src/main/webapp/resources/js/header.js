$(function(){
    $(window).scroll(function(){
        if($(document).scrollTop() > 5){
            $('#navbar').addClass('sticky');
        } else {
            $('#navbar').removeClass('sticky');
        }
    })
});