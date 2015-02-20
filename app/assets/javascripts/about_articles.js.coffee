# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->

  about_target = window.location.hash
  if about_target == "#spivpracia"
#    alert "anchor "+about_target
    $('a.spivpratsya').addClass " selected"
    $('.about_us_start').addClass(' dn')
    $('.spivpratsya_tab').show()
#  text spoiler
  $(".spoiler h4").click ->
    $(this).parent().children("div.splCont").toggle "normal"
    false
#  sidebar menu

  $("#about-us-sidebar").on "click", "a", ->
#    $('.about_us_start').removeClass(" dn")
    $('.about_us_start').addClass(" dn")
    # fade out all open subcontents
    $(".about-item:visible").fadeOut()
    # fade in new selected subcontent
    $(".about-item[id=" + $(this).attr("data-id") + "]").fadeIn()

# add class selected oncklick on sidebar menu item

  $(".about-us-sidebar li a").click ->
    $(".about-us-sidebar li a").removeClass  "selected"
    $(this).addClass " selected"

#    auto positions sidebar menu
$ ->
  offset = $("#about-us-sidebar").offset()
  topPadding = 50
  $(window).scroll ->
    if $(window).scrollTop() > offset.top
      $("#about-us-sidebar").stop().animate marginTop: $(window).scrollTop() - offset.top + topPadding
    else
      $("#about-us-sidebar").stop().animate marginTop: 0




