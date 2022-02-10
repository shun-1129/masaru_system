$(function () {
    var Num_of_peo_001 = 1;
    var Num_of_peo_002 = 1;
    var Num_of_peo_003 = 1;
    var Num_of_peo_Free = 1;

    $("#Minus_001").on("click", function () {
        var counter = $("#Num_of_peo_001").text();
        var price = $("#price_001").text();
        if (counter != 1) {
            counter--;
            price = price * counter;
            $("#Num_of_peo_001").text(counter);
            $("#total_fee_001").text(price);
        }
    });
    $("#Plus_001").on("click", function () {
        var counter = $("#Num_of_peo_001").text();
        var price = $("#price_001").text();
        if (counter < 10) {
            counter++;
            price = price * counter;
            $("#Num_of_peo_001").text(counter);
            $("#total_fee_001").text(price);
        }
    });

    $("#Minus_002").on("click", function () {
        var counter = $("#Num_of_peo_002").text();
        var price = $("#price_002").text();
        if (counter != 1) {
            counter--;
            price = price * counter;
            $("#Num_of_peo_002").text(counter);
            $("#total_fee_002").text(price);
        }
    });
    $("#Plus_002").on("click", function () {
        var counter = $("#Num_of_peo_002").text();
        var price = $("#price_002").text() * 2;
        if (counter < 10) {
            counter++;
            price = price * counter;
            $("#Num_of_peo_002").text(counter);
            $("#total_fee_002").text(price);
        }
    });

    $("#Minus_003").on("click", function () {
        var counter = $("#Num_of_peo_003").text();
        var price = $("#price_003").text();
        if (counter != 1) {
            counter--;
            price = price * counter;
            $("#Num_of_peo_003").text(counter);
            $("#total_fee_003").text(price);
        }
    });
    $("#Plus_003").on("click", function () {
        var counter = $("#Num_of_peo_003").text();
        var price = $("#price_003").text() * 3;
        if (counter < 10) {
            counter++;
            price = price * counter;
            $("#Num_of_peo_003").text(counter);
            $("#total_fee_003").text(price);
        }
    });

    $("#Minus_Free").on("click", function () {
        var counter = $("#Num_of_peo_Free").text();
        var price = $("#price_Free").text();
        if (counter != 1) {
            counter--;
            price = price * counter;
            $("#Num_of_peo_Free").text(counter);
            $("#total_fee_Free").text(price);
        }
    });
    $("#Plus_Free").on("click", function () {
        var counter = $("#Num_of_peo_Free").text();
        var price = $("#price_Free").text();
        if (counter < 10) {
            counter++;
            price = price * counter;
            $("#Num_of_peo_Free").text(counter);
            $("#total_fee_Free").text(price);
        }
    });
});
