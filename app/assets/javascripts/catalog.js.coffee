# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#$(document).ready ->
#  $("#navigation").treeview
#    collapsed: true
#    unique: true
#    persist: "location"
#$(document).ready ->
tab = (tab) ->
  document.getElementById("tab1").style.display = "none"
  document.getElementById("tab2").style.display = "none"
  document.getElementById("tab3").style.display = "none"
  document.getElementById("li_tab1").setAttribute "class", ""
  document.getElementById("li_tab2").setAttribute "class", ""
  document.getElementById("li_tab3").setAttribute "class", ""
  document.getElementById(tab).style.display = "block"
  document.getElementById("li_" + tab).setAttribute "class", "active"