$(document).ready(function () {
    let ratedby = $('#ratedby').val()
    var rating = $('#rating').val() / ratedby;
    console.log(rating);
    rating = rating.toPrecision(1);

    $("#num").html("(" + ratedby + ")");
    if (rating >= 1) {

        $('#star1').addClass('checked');
    }
    if (rating >= 2) {
        $('#star2').addClass('checked');
    }
    if (rating >= 3) {
        $('#star3').addClass('checked');
    }
    if (rating >= 4) {
        $('#star4').addClass('checked');
    }

    // if (rating >= 5) {
    //     $('#star5').addClass('checked');
    // }

});
