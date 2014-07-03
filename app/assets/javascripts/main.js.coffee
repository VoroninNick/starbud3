# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).ready ->
  setTimeout (->
    $("#gsc-i-id1").attr "placeholder", "Введіть, що ви шукаєте..."
  ), 5000

  $('select#vd_brand').change (e) ->
    e.preventDefault()
    brand= $(this).val()

    valuesToSubmit = {brand: brand}

  $('.active_control').click ->
    e.preventDefault()
    alert('test')
    $('#visual_designer .vd_render_interior_select_wrapper').removeClass('.vd_comp_top_453px')
    $('#visual_designer .vd_render_interior_select_wrapper').css({top:'0'})
    $('.vd_render_interior_title').removeClass('active_control')


    $.ajax
      url: '/get_collection_from_brand'
      type: "GET"
      data: valuesToSubmit
      beforeSend: ->
        return
      success: (data) ->

#        alert(data)
        $select = $('select#testVD')
        $select.children().remove()

        s = data
#        alert(s)
        options = s.split(',')

#        alert(options)
        $(options).each (name) ->

          option = $(this)
          alert(option)
          $("select#testVD").append "<option>" + option + "</option>"
#        for i in [0...options.length]
#          option = $(this)
#          $("select#testVD").append "<option>" + option + "</option>"
#          i++
        return


      complete: ->
        return

  $("#main-menu li a").each ->
    if $(this).attr("href") is "/publication/"
      $(".publication a").addClass "active"

  $('.vd_render_interior_title').click (e) ->
    e.preventDefault()
    $(this).addClass('active_control')
    imageLength = $('.vd_render_interior_select_wrapper').children().length
    if imageLength == 1
      imageHeight = $('.vd_render_interior_select_wrapper img').height()
      imageHeight = imageHeight * 1
      $('#visual_designer .vd_render_interior_select_wrapper').css({top:'-'+imageHeight+'px'})

    if imageLength == 2
      imageHeight = $('.vd_render_interior_select_wrapper img').height()
      imageHeight = imageHeight * 2
      $('#visual_designer .vd_render_interior_select_wrapper').css({top:'-'+imageHeight+'px'})

    if imageLength == 3
      imageHeight = $('.vd_render_interior_select_wrapper img').height()
      imageHeight = imageHeight * 3
      $('#visual_designer .vd_render_interior_select_wrapper').css({top:'-'+imageHeight+'px'})

    if imageLength >= 4
      $('#visual_designer .vd_render_interior_select_wrapper').addClass('.vd_comp_top_453px')


  $('.vd_nav_ico.vd_nav').click (e) ->
    e.preventDefault()
    $('#vd_door_nav').toggleClass('right_null')
    $(this).toggleClass('passive')

  $('.vd_nav_ico.vd_comp').click (e) ->
    e.preventDefault()
    $('#vd_components').toggleClass('bottom_null')
    $(this).toggleClass('passive')

  $('.vdc_dor').click (e) ->
    e.preventDefault()

    $('.vd_component_one_item').removeClass('active')
    $(this).addClass('active')
    $('#vd_door_nav .vd_tab').removeClass('tab_hide')
    $('#vd_door_nav .vd_tab').addClass('tab_hide')
    $('#vd_door_nav .tab_door').removeClass('tab_hide')

  $('.vdc_laminate').click (e) ->
    e.preventDefault()

    $('.vd_component_one_item').removeClass('active')
    $(this).addClass('active')
    $('#vd_door_nav .vd_tab').removeClass('tab_hide')
    $('#vd_door_nav .vd_tab').addClass('tab_hide')
    $('#vd_door_nav .tab_laminate').removeClass('tab_hide')

  $('.vdc_wall').click (e) ->
    e.preventDefault()

    $('.vd_component_one_item').removeClass('active')
    $(this).addClass('active')
    $('#vd_door_nav .vd_tab').removeClass('tab_hide')
    $('#vd_door_nav .vd_tab').addClass('tab_hide')
    $('#vd_door_nav .tab_wall').removeClass('tab_hide')

  $('.vdc_baseboard').click (e) ->
    e.preventDefault()

    $('.vd_component_one_item').removeClass('active')
    $(this).addClass('active')
    $('#vd_door_nav .vd_tab').removeClass('tab_hide')
    $('#vd_door_nav .vd_tab').addClass('tab_hide')
    $('#vd_door_nav .tab_baseboard').removeClass('tab_hide')


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
