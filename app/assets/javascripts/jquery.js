$(document).on('turbolinks:load',function(){

    $('#delete_alert').click(function(){
        if(!confirm('本当に削除しますか？')){
            return false;
        }else{

        }
    });

    $('#login_btn').click(function(){
        $('.login-modal').fadeIn();
    });

    $('.x-btn').click(function(){
        $('.login-modal').fadeOut();
    });

    $('#bars').click(function(){
        $('#header-back').fadeIn();
        $('#x-btn2').fadeIn();
        $('#bars').fadeOut();
    });

    $('#x-btn2').click(function(){
        $('#header-back').fadeIn();
        $('#x-btn2').fadeOut;
        $('#bars').fadeIn();
        $('#header-back').removeAttr('style');
    });

});