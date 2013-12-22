# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  offset = $("#publication-sidebar-wrapper").offset()
  topPadding = 50
  $(window).scroll ->
    if $(window).scrollTop() > offset.top
      $("#publication-sidebar-wrapper").stop().animate marginTop: $(window).scrollTop() - offset.top + topPadding
    else
      $("#publication-sidebar-wrapper").stop().animate marginTop: 0


#  $("#publication-sidebar li a").click ->
##    $(".about-us-sidebar li a").parent().removeClass  "selected"
##    $(this).parent().addClass " selected"
#    $("#publication-sidebar li a").removeClass  "selected"
#    #    $(".history-about").removeClass " dbl"
#    $(this).addClass " selected"
##    $(".history-about").addClass " dbl"
