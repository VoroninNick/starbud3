# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#->
#  CloudZoom.quickStart()
$(document).ready ->
# show order floor form
  $('.order-flor-button').click ->
    $parent = $(this).closest('.order-floor-form-overlay')
    $form_wrap = $parent.find('.order-floor-form-wrap')
    if $form_wrap.hasClass('expand-form')
      $form_wrap.removeClass('expand-form')
    else
      $form_wrap.addClass('expand-form')

# hide order floor form
  $('a.close-form').click ->
    $parent = $(this).closest('.order-floor-form-overlay')
    $form_wrap = $parent.find('.order-floor-form-wrap')
    if $form_wrap.hasClass('expand-form')
      $form_wrap.removeClass('expand-form')
    else
      $form_wrap.addClass('expand-form')

#defaault fancy box
  $(".fancybox").fancybox
    afterLoad: ->
      if $('.order-floor-form-wrap').hasClass('expand-form')
        $('.order-floor-form-wrap').removeClass('expand-form')
  $(".fancybox-call-order").fancybox
    padding: 0
    width: '100%'
    closeBtn : false
    prevEffect: "none"
    nextEffect: "none"
    helpers:
      title:
        type: "outside"
    tpl:
      wrap: "<div id=\"gallery_wrapper\" class=\"fancybox-wrap mywrap\" tabIndex=\"-1\"><div class=\"fancybox-skin\"><div class=\"fancybox-outer\"><div class=\"fancybox-inner\"></div><a class=\"close_fancybox_custom\" onclick=\"$.fancybox.close()\"><img src=\"/assets/Cross-button.png\"></a></div></div></div>"
  $("a.fncy-custom-close").click (e) ->
    e.preventDefault()
    $.fancybox.close()
    return

  $(".fancybox-order-product").fancybox
    padding: 0
    width: '100%'
    closeBtn : false
    prevEffect: "none"
    nextEffect: "none"
    helpers:
      title:
        type: "outside"
    tpl:
      wrap: "<div id=\"op-form_wrapper\" class=\"fancybox-wrap mywrap\" tabIndex=\"-1\"><div class=\"fancybox-skin\"><div class=\"fancybox-outer\"><div class=\"fancybox-inner\"></div><a class=\"close_fancybox_custom\" onclick=\"$.fancybox.close()\"><img src=\"/assets/Cross-button.png\"></a></div></div></div>"
  $("a.fncy-custom-close").click (e) ->
    e.preventDefault()
    $.fancybox.close()
    return

#sidebar catalog
  $("#catalog-sidebar").treeview
    persist: "location"
    collapsed: true
    unique: true

  #  for dor image colors view
  $("#variants-color ul li a").click ->
    $("#variants-color ul li").removeClass(' door_color_active')
    $(this).parent().addClass(' door_color_active')
    mainImage = $(this).attr("href") #Find Image Name
    mainLinkToImage = $(this).attr("href")
    $(".image-block a").attr href: mainLinkToImage
    $(".image-block a img").attr src: mainImage
    false


#tabs dor options
tab = (tab) ->
  document.getElementById("tab1").style.display = "none"
  document.getElementById("tab2").style.display = "none"
  document.getElementById("tab3").style.display = "none"
  document.getElementById("li_tab1").setAttribute "class", ""
  document.getElementById("li_tab2").setAttribute "class", ""
  document.getElementById("li_tab3").setAttribute "class", ""
  document.getElementById(tab).style.display = "block"
  document.getElementById("li_" + tab).setAttribute "class", "active"