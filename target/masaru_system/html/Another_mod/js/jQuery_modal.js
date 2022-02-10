$(function () {
    $(".js_modal_opne").each(function () {
        $(this).on("click", function () {
            var target = $(this).data("target");
            var modal = document.getElementById(target);
            $(modal).fadeIn();
            return false;
        });
    });
    $(".js_modal_close").on("click", function () {
        $(".js_modal").fadeOut();
        return false;
    });
});
