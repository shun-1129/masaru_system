$(function () {
    $("#Start_btn").on("click", function () {
        $("#main_div").hide();
        $("#in_div").show();
    });

    $("#End_btn").on("click", function () {
        $("#main_div").hide();
        $("#out_div").show();
    });

    $(".Main_Return").on("click", function () {
        $("#in_div").hide();
        $("#out_div").hide();
        $("#main_div").show();
    });
});
