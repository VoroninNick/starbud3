# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#->
#  CloudZoom.quickStart()
$(document).ready ->

#defaault fancy box
  $(".fancybox").fancybox()

#sidebar catalog
  $("#catalog-sidebar").treeview
#    persist: "location"
    persist: "cookie"
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