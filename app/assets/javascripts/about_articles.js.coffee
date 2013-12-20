# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $("#about-us-sidebar").on "click", "a", ->

    # fade out all open subcontents
    $(".about-item:visible").fadeOut()

    # fade in new selected subcontent
    $(".about-item[id=" + $(this).attr("data-id") + "]").fadeIn()


$ ->
  offset = $("#about-us-sidebar").offset()
  topPadding = 50
  $(window).scroll ->
    if $(window).scrollTop() > offset.top
      $("#about-us-sidebar").stop().animate marginTop: $(window).scrollTop() - offset.top + topPadding
    else
      $("#about-us-sidebar").stop().animate marginTop: 0


  $(".about-us-sidebar li a").click ->
#    $(".about-us-sidebar li a").parent().removeClass  "selected"
#    $(this).parent().addClass " selected"
    $(".about-us-sidebar li a").removeClass  "selected"
#    $(".history-about").removeClass " dbl"
    $(this).addClass " selected"
#    $(".history-about").addClass " dbl"

