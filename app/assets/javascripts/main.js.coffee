# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

AnimatedLayer1 = ->
  $(".image-layer-1").transition
    x: 1500
    y: 0
  , 1200, "easeOutQuint"

$(document).ready ->

  $("#logo-carousel").flexisel
    visibleItems: 6
    animationSpeed: 1000
    autoPlay: true
    autoPlaySpeed: 3000
    pauseOnHover: true
    enableResponsiveBreakpoints: true
    responsiveBreakpoints:
      portrait:
        changePoint: 480
        visibleItems: 1

      landscape:
        changePoint: 640
        visibleItems: 2

      tablet:
        changePoint: 768
        visibleItems: 3


  $(".voronin_studio_img").hover (->
    setTimeout (->
      $(".voronin_studio_img .voronin-studio-lable").hide()
      $(".voronin_studio_img .hover-voronin-studio-lable").show()
    ), 150
    $(".voronin_studio_text a").removeClass().addClass("hover-voronin-studio-link")
  ), ->
    $(".voronin_studio_img .hover-voronin-studio-lable").hide()
    $(".voronin_studio_img .voronin-studio-lable").show()
    $(".voronin_studio_text a").removeClass("hover-voronin-studio-link")


  $(".bxslider").bxSlider
    pagerCustom: "#bx-pager"
    mode: 'fade'
#    auto: true
    onSliderLoad: ->
      setTimeout AnimatedLayer1, 800
#    onSlideAfter: ->
#      # do mind-blowing JS stuff here
#      alert "A slide has finished transitioning. Bravo. Click OK to continue!"



  $("#variants-color").bxSlider
    pagerCustom: "#variants"
    mode: 'fade'
#    pause: 2000
#    easing: 'swing'