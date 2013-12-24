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

$(document).ready ->

#  publications sliders
#  $("#interesting_news_slider").superslides
#    play: true
#    delay: 10000
#    animation: 'fade'
#    animation_speed: 10000
#    animation_easing: 'swing'
#
#  $("#useful_video_slider").superslides
#    play: true
#    delay: 10000
#    animation: 'fade'
#    animation_speed: 10000
#    animation_easing: 'swing'

  $("#helpful_articles_slider").superslides
    play: true
    delay: 10000
    animation: 'fade'
    animation_speed: 10000
    animation_easing: 'swing'

