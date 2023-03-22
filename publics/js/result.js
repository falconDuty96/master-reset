$(document).ready(function() {
    window.onresize = function() {
        if(window.innerWidth > 767) {
            $('.__result_right').css({'display':'block'});
            $('.__result_left').css({'display':'block'});
        }
        else{
            $('.__result_right').css({'display':'none'});
            $('.__result_left').css({'display':'block'});  
        }
    }
})
function seeCart(e)
{
    e.preventDefault();
    $('.__result_left').css({'display':'none'});
    $('.__result_right').css({'display':'block'});
}

function seeList(e)
{
    e.preventDefault();
    $('.__result_right').css({'display':'none'});
    $('.__result_left').css({'display':'block'});
}