$(function(){
    $('.trivia-options').find('li').on('click', function(){
        if($(this).hasClass('right')){
            win();
        }else{
            loose();
        }
    });
});

function loose(){
    $('#card-game').hide();
    $('#card-loose').show();
}
function win(){
    $('#card-game').hide();
    $('#card-win').show();
}