$(document).ready(function () {

    var divs = $('.stars');


    divs.each(function () {
        let t = $(this);
        let ratedby = t.children('.ratedby').val();
//    $("#num").html("(" + ratedby + ")");

        if (ratedby === 0) {

        } else {

            var rating = t.children('.rating').val() / ratedby;
//    console.log(rating);
            rating = rating.toPrecision(1);


            if (rating >= 1) {

                t.children('.star1').addClass('checked');
            }
            if (rating >= 2) {
                t.children('.star2').addClass('checked');
            }
            if (rating >= 3) {
                t.children('.star3').addClass('checked');
            }
            if (rating >= 4) {
                t.children('.star4').addClass('checked');
            }

            if (rating >= 5) {
                t.children('.star5').addClass('checked');
            }

        }
    });

});

