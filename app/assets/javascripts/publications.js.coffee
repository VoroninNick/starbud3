# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#$ ->
#  offset = $("#publication-sidebar-wrapper").offset()
#  topPadding = 50
#  $(window).scroll ->
#    if $(window).scrollTop() > offset.top
#      $("#publication-sidebar-wrapper").stop().animate marginTop: $(window).scrollTop() - offset.top + topPadding
#    else
#      $("#publication-sidebar-wrapper").stop().animate marginTop: 0

$(document).ready ->
  $("#tab-container").easytabs()
  $("#tab2-container").easytabs()
  $("#variant-tab-container").easytabs()

  $("#helpful_articles_banner").bxSlider
    mode: 'fade'
    controls: false
    auto: true
    speed: 500
    easing: 'swing'
    onSliderLoad: ->
      $('.publication-slider-content-inner h3').addClass('animated slideInLeft')
      $('.publication-slider-content-inner p').addClass('animated slideInDown')
      $('.publication-slider-content').addClass('animated slideInDown')
      $('.publication-slider-content-read-more').addClass('animated slideInRight')

