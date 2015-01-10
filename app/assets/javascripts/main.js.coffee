# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(window).scroll ->
  logo = $(".main-header-logo")
  sticky = $(".main-menu-wrap")
  scroll = $(window).scrollTop()
  if scroll <=7
    logo.css('top', scroll)
  if scroll ==0
    logo.css('top', -50)
  if scroll >= 7
    sticky.addClass "fixed"
  else
    sticky.removeClass "fixed"

$(document).ready ->

#  $('a#nazariy-button').trigger('click')
#  fancybox one time popup form
  unless $.cookie("star_bud_subscribe_status") is "1"
    setTimeout (->
      $('a#nazariy-button').trigger('click')
      jQuery.cookie "star_bud_subscribe_status", "1",
        expires: 31
      return
    ), 1000

  $('form.star-bud-form').submit (event) ->
    # Stop the browser from submitting the form.
    event.preventDefault()
    # Serialize the form data.
    $thisForm = $(this).closest('form')
    formData = $thisForm.serialize()
    # Submit the form using AJAX.
    $.ajax
      type: "POST"
      url: $thisForm.attr("action")
      data: formData
      beforeSend: ->
        alert "Відсилання..."
      success: ->
        alert "Відіслано..."
        $thisForm.find("input[type=text],input[type=email] textarea").val("")
        if $('.order-floor-form-wrap').hasClass('expand-form')
          $('.order-floor-form-wrap').removeClass('expand-form')
      error: ->
        alert "Something went wrong!"

  setTimeout (->
    $("#gsc-i-id1").attr "placeholder", "Введіть, що ви шукаєте..."
  ), 5000



  $("#main-menu li a").each ->
    if $(this).attr("href") is "/publication/"
      $(".publication a").addClass "active"


  url = document.location.href

  if url.indexOf("publication") >=0
    $(".publication>a").addClass(" active_menu ")

  if url.indexOf("helpful_articles") >=0
    $(".ps3 a").addClass(" active_menu ")

  if url.indexOf("useful_video") >=0
    $(".ps2 a").addClass(" active_menu ")

  if url.indexOf("interest_news") >=0
    $(".ps1 a").addClass(" active_menu ")


  if url.indexOf("dveri") >=0
    $(".catalog>a").addClass(" active_menu ")

  if url.indexOf("pidloga") >=0
    $(".catalog>a").addClass(" active_menu ")

  if url.indexOf("ekster-er") >=0
    $(".catalog>a").addClass(" active_menu ")

  if url.indexOf("inter-er") >=0
    $(".catalog>a").addClass(" active_menu ")
  if url.indexOf("suputni-tovari") >=0
    $(".catalog>a").addClass(" active_menu ")



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


# main banner
  $(".bxslider").bxSlider
    pagerCustom: "#bx-pager"
    mode: 'fade'
    auto: true
    onSliderLoad: ->
      $('.image-layer-1').addClass('animated slideInLeft')
      $('.image-layer-2').addClass('animated slideInDown')
      $('.content-layer').addClass('animated slideInRight')
      $('.button-layer').addClass('animated slideInRight')



  $("#variants-color").bxSlider
    pagerCustom: "#variants"
    mode: 'fade'
