// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs


//= require_tree .


function getViewportWidth() {
    if (window.innerWidth) {
        return window.innerWidth;
    }
    else if (document.body && document.body.offsetWidth) {
        return document.body.offsetWidth;
    }
    else {
        return 0;
    }
}

function getViewportHeight() {
    if (window.innerHeight) {
        return window.innerHeight;
    }
    else if (document.body && document.body.offsetHeight) {
        return document.body.offsetHeight;
    }
    else {
        return 0;
    }
}

if (/Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent)) {
    var actual_width = getViewportWidth();
    var actual_height = getViewportHeight();

    var min_width = 887;
    var min_height = 615;

    var ratio = Math.min(actual_width / min_width, actual_height / min_height);

    if (ratio < 1) {
        document.querySelector('meta[name="viewport"]').setAttribute('content', 'initial-scale=' + ratio + ', maximum-scale=' + ratio + ', minimum-scale=' + ratio + ', user-scalable=yes, width=' + actual_width);
    }
}

alert(document.querySelector('meta[name="viewport"]').getAttribute('content'));