$(function () {
    var count = 30;
    for (var i = 1; i <= 30; i++) {
        count--;
        $("#seconds").text(count);
    }
});
