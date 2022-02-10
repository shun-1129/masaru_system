/// <reference path="../ts/JQuery.d.ts" />

$(function(){
    history.pushState(null, null, null);

    $(window).on('popstate', function(){
        history.pushState(null, null, null);
    });
});