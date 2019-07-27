
$(document).ready(function () {

    $(".fa").hover(function () {
        $(this).addClass('picked');
        $(this).prevAll('.fa').addClass('picked');
    }, function () {
        $(this).removeClass('picked');
        $(this).prevAll('.fa').removeClass('picked');
    });

    $('.fa').click(function (e) {
        $(this).addClass('checked');
        $(this).prevAll('.fa').addClass("checked");
        let x = $('.checked').length;
        $('#res').html(x + "!");
        $('#rating').val(x);

    });
});
    