# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  lat = 49.806660
  lng = 24.057296
  myLatlng = new google.maps.LatLng(lat, lng)
  myOptions =
    zoom: 17
    center: myLatlng
    scrollwheel: false
    mapTypeId: google.maps.MapTypeId.ROADMAP

  map = new google.maps.Map(document.getElementById("map"), myOptions)
  marker = new google.maps.Marker(
    position: myLatlng
    map: map
    title: "Текст \"Назва\""
  )
  jQuery.extend jQuery.validator.messages,
    required: "Це поле необхідно заповнити"
    remote: "Виправте це поле щоб продовжити"
    email: "Введіть правильний e-mail адресу."
    url: "Введіть правильний URL."
    date: "Введіть правильну дату."
    dateISO: "Введіть правильну дату (ISO)."
    number: "Введіть число."
    tell: "Введіть число."
    digits: "Введіть лише цифри."
    creditcard: "Введіть правильний номер вашої кредитної картки."
    equalTo: "Повторіть введення значення ще раз."
    accept: "Будь ласка, введіть значення з правильним розширенням."
    maxlength: jQuery.format("Не можна вводити більш {0} символів.")
    minlength: jQuery.format("Повинно бути не менше{0} символів.")
    rangelength: jQuery.format("Введіть від {0} до {1} символів.")
    range: jQuery.format("Введіть число від {0} до {1}.")
    max: jQuery.format("Введіть число менше або рівне {0}.")
    min: jQuery.format("Введіть число більше або рівне {0}.")


  $(".contacts-form form").validate
    rules:
      phone:
        required: true
        digits: true
        minlength: 7
        maxlength: 11

      name:
        required: true
        minlength: 2
        regexp: "[A-Za-zА-Яа-я]"

      message:
        required: true
        minlength: 12

      email:
        required: true

    messages:
      message:
        required: "Введіть повідомлення."
        minlength: "Введіть не менше 12 символів."

      name:
        required: "Введіть ваше ім'я"
        minlength: "Ім'я повинно мати не менше 3 і не більше 15 символів."
        regexp: "Логін може складатися лише з літер."

      email:
        required: "Введіть вашу електронну пошту."

      phone:
        required: "Введіть ваш номер телефону."
        digits: "Невірний формат номера телефону."

