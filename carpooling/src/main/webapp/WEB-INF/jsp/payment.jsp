<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Test Payment Page</title>
</head>
<body>
<center><a href="${pageContext.request.contextPath}">Go back to Home Page</a></center>
<h1>*Testing transaction using paypal sandbox*</h1>
<script src="https://www.paypal.com/sdk/js?client-id=sb"></script>
<script>paypal.Buttons().render('body');</script>
<script>
    function makePayment(sum) {
        let url = `paypal/make/payment?sum=${sum}`;
        fetch(url, {method: 'POST'})
            .then(function (response) {
                return response.json();
            })
            .then(function (myJson) {
                window.open(myJson.redirect_url);
            });
    }
</script>
<script>
    window.addEventListener('DOMContentLoaded', function () {
        var url_string = window.location.href;
        var url = new URL(url_string);
        var paymentId = url.searchParams.get("paymentId");
        var payerId = url.searchParams.get("PayerID");
        completePayment(paymentId, payerId);
    });

    function completePayment(paymentId, payerId) {
        let url = `paypal/complete/payment?paymentId=${paymentId}&PayerID=${payerId}`;
        fetch(url, {method: 'POST'})
            .then(function (response) {
                return response.json();
            })
            .then(function (myJson) {
                console.log(myJson);
            });
    }
</script>
</body>
</html>
