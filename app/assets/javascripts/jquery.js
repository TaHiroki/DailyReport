$(function(){

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

});