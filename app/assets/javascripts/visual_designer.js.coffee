
$(document).ready ->

  attrRenderID = $("#visual_designer .vd_get_render_one_item:first-child").attr("data-render-interior-id")
  $("#vd_view img.image_view").attr("data-render-interior-id", attrRenderID)
  dataRenderImage = $("#visual_designer .vd_get_render_one_item:first-child").attr("data-render-image")
  positionX = $("#visual_designer .vd_get_render_one_item:first-child").attr("data-position-x")
  positionY = $("#visual_designer .vd_get_render_one_item:first-child").attr("data-position-y")
  imageView = $('img.image_view')
#  imageView.attr src: dataRenderImage
  imageView.attr("data-position-x", positionX)
  imageView.attr("data-position-y", positionY)

  $('select#vd_brand').change (e) ->
    e.preventDefault()
    brand= $(this).val()
    valuesToSubmit = {brand: brand}
    $.ajax
      url: '/get_collection_from_brand'
      type: "GET"
      data: valuesToSubmit
      beforeSend: ->
        return
      success: (data) ->

        $select = $('select#vd_collections')
        $select.children().remove()

        s = data
        options = s.split(',')
        $.each options, (index, name) ->
          $("select#vd_collections").append "<option value="+name+">" + name + "</option>"
          return
        return

      complete: ->
        return

  $('select#vd_collections').change ->
    collection= $(this).val()
    $(this).removeClass("select_collection")
    valuesToSubmit = {collection: collection}
    $.ajax
      url: '/get_doors_from_collection'
      type: "GET"
      data: valuesToSubmit
      beforeSend: ->
        return
      success: (data) ->
        $data = $(data)
        $images = $data.find('img')
        $doorsWrap = $(".vd_doors_inner")
        $doorsWrap.children().remove()
        $.each $images, (index, img) ->
          $img = $(img)
          src = $img.attr('src')
          dataToolTip = $img.attr('data-tooltip')
          dataSrc = $img.attr('data-src')
          $img = $("<div class='vd_doors_item'  data-tooltip="+dataToolTip+"><img src="+src+" ></div>")
          $img.appendTo($doorsWrap)
        return

      complete: ->
        return

  #ajax select data collection from laminate
  $('select#vf_brand').change (e) ->
    e.preventDefault()
    brand= $(this).val()
    valuesToSubmit = {brand: brand}
    $.ajax
      url: '/get_collection_from_brand_floor'
      type: "GET"
      data: valuesToSubmit
      beforeSend: ->
        return
      success: (data) ->
        $select = $('select#vf_collections')
        $select.children().remove()

        s = data
        options = s.split(',')
        $.each options, (index, name) ->
          $("select#vf_collections").append "<option value="+name+">" + name + "</option>"
          return
        return

      complete: ->
        collection= $('select#vf_collections option:first').val()
        $('select#vf_collections').removeClass("select_collection")
        valuesToSubmit = {collection: collection}
        $.ajax
          url: '/get_floors_from_collection'
          type: "GET"
          data: valuesToSubmit
          beforeSend: ->
            return
          success: (data) ->
            $data = $(data)
            $images = $data.find('img')
            $doorsWrap = $(".vf_floors_inner")
            $doorsWrap.children().remove()
            $.each $images, (index, img) ->
              $img = $(img)
              src = $img.attr('src')
              title = $img.attr('title')
              dataToolTip = $img.attr('data-tooltip')
              dataSrc = $img.attr('data-src')
              $img = $("<div class='vd_laminate_thumb'  data-tooltip="+dataToolTip+"><img src="+src+" data-src="+dataSrc+" title="+title+" ></div>")
              $img.appendTo($doorsWrap)
        return

  #select floor from select collection
  $('select#vf_collections').change ->
    collection= $(this).val()
    $(this).removeClass("select_collection")
    valuesToSubmit = {collection: collection}
    $.ajax
      url: '/get_floors_from_collection'
      type: "GET"
      data: valuesToSubmit
      beforeSend: ->
        return
      success: (data) ->
        $data = $(data)
        $images = $data.find('img')
        $doorsWrap = $(".vf_floors_inner")
        $doorsWrap.children().remove()
        $.each $images, (index, img) ->
          $img = $(img)
          src = $img.attr('src')
          title = $img.attr('title')
          dataToolTip = $img.attr('data-tooltip')
          dataSrc = $img.attr('data-src')
          $img = $("<div class='vd_laminate_thumb'  data-tooltip="+dataToolTip+"><img src="+src+" data-src="+dataSrc+" title="+title+" ></div>")
          $img.appendTo($doorsWrap)
        return

      complete: ->
        return

#----------------------------------------------------------------------------------------------------------------------------------------------

  #ajax select data collection from plinth
  $('select#vp_brand').change (e) ->
    e.preventDefault()
    brand= $(this).val()
    valuesToSubmit = {brand: brand}
    $.ajax
      url: '/get_collection_from_brand_plinth'
      type: "GET"
      data: valuesToSubmit
      beforeSend: ->
        return
      success: (data) ->
        $select = $('select#vp_collections')
        $select.children().remove()

        s = data
        options = s.split(',')
        $.each options, (index, name) ->
          $("select#vp_collections").append "<option value="+name+">" + name + "</option>"
          return
        return

      complete: ->
        collection= $('select#vp_collections option:first').val()
        $('select#vp_collections').removeClass("select_collection")
        valuesToSubmit = {collection: collection}
        $.ajax
          url: '/get_plinths_from_collection'
          type: "GET"
          data: valuesToSubmit
          beforeSend: ->
            return
          success: (data) ->
            $data = $(data)
            $images = $data.find('img')
            $doorsWrap = $(".vp_plinths_inner")
            $doorsWrap.children().remove()
            $.each $images, (index, img) ->
              $img = $(img)
              src = $img.attr('src')
              title = $img.attr('title')
              dataToolTip = $img.attr('data-tooltip')
              dataSrc = $img.attr('data-src')
              $img = $("<div class='vd_baseboard_thumb'  data-tooltip="+dataToolTip+"><img src="+src+" data-src="+dataSrc+" title="+title+" ></div>")
              $img.appendTo($doorsWrap)
        return

  #select plinth from select collection
  $('select#vp_collections').change ->
    collection= $(this).val()
    $(this).removeClass("select_collection")
    valuesToSubmit = {collection: collection}
    $.ajax
      url: '/get_plinths_from_collection'
      type: "GET"
      data: valuesToSubmit
      beforeSend: ->
        return
      success: (data) ->
        $data = $(data)
        $images = $data.find('img')
        $doorsWrap = $(".vp_plinths_inner")
        $doorsWrap.children().remove()
        $.each $images, (index, img) ->
          $img = $(img)
          src = $img.attr('src')
          title = $img.attr('title')
          dataToolTip = $img.attr('data-tooltip')
          dataSrc = $img.attr('data-src')
          $img = $("<div class='vd_baseboard_thumb'  data-tooltip="+dataToolTip+"><img src="+src+" data-src="+dataSrc+" title="+title+" ></div>")
          $img.appendTo($doorsWrap)
        return

      complete: ->
        return



  #---------------------------------------------------------------------------------------------------------------------------------------------
  $('.vd_get_render_one_item').click (e) ->
    e.preventDefault()
    dataRenderImage = $(this).attr("data-render-image")
    dataRenderID = $(this).attr("data-render-interior-id")
    positionX = $(this).attr("data-position-x")
    positionY = $(this).attr("data-position-y")
    imageView = $('img.image_view')
    imageView.attr src: dataRenderImage
    imageView.attr("data-position-x", positionX)
    imageView.attr("data-position-y", positionY)
    imageView.attr("data-render-interior-id", dataRenderID)

    $('#visual_designer .vd_render_interior_select_wrapper').css({top:'0'})
    $('#visual_designer .vd_render_interior_select_wrapper').css({height:'0'})
    $('#visual_designer .vd_render_interior_select_inner').css('overflow-y', 'hidden')
    $('.vd_render_interior_title').removeClass('active_control')
    $('.vdc_interior_close').css({top:'140px'})


  $(".vd_doors_inner").on "click", ".vd_doors_item img", ->
    imageView = $('img.image_view')
    positionX = imageView.attr("data-position-x")
    positionY = imageView.attr("data-position-y")
    $('.vd_door_prev').remove()
    objectImage = $(this).attr("src")
    $("#vd_view").append "<img class=\"vd_door_prev\" src="+objectImage+" style=\"left:"+positionX+"px; top:"+positionY+"px;\"/>"

  #
  $('.vd_interior_open').click (e) ->
    e.preventDefault()
    $(this).addClass('active_control')

    imageLength = $('.vd_render_interior_select_inner').children().length
    if imageLength == 1
      imageHeight = $('.vd_render_interior_select_wrapper img').height()
      imageHeight = imageHeight * 1
      $('#visual_designer .vd_render_interior_select_wrapper').css({top:'-'+imageHeight+'px'})
      $('#visual_designer .vd_render_interior_select_wrapper').css({height:imageHeight+'px'})

    if imageLength == 2
      imageHeight = $('.vd_render_interior_select_wrapper img').height()
      imageHeight = imageHeight * 2
      $('#visual_designer .vd_render_interior_select_wrapper').css({top:'-'+imageHeight+'px'})
      $('#visual_designer .vd_render_interior_select_wrapper').css({height:imageHeight+'px'})

    if imageLength == 3
      imageHeight = $('.vd_render_interior_select_wrapper img').height()
      imageHeight = imageHeight * 3
      $('#visual_designer .vd_render_interior_select_wrapper').css({top:'-'+imageHeight+'px'})
      $('#visual_designer .vd_render_interior_select_wrapper').css({height:imageHeight+'px'})

    if imageLength >= 4
      $('#visual_designer .vd_render_interior_select_wrapper').css({top:'-453px'})
      $('#visual_designer .vd_render_interior_select_wrapper').css({height:'453px'})
      $('#visual_designer .vd_render_interior_select_inner').css({height:'453px'})
      $('#visual_designer .vd_render_interior_select_inner').css('overflow-y', 'scroll')


    $('.vd_render_interior_title').removeClass('vd_interior_open')
    $('.vd_render_interior_title').addClass('vd_interior_close')
    $('.vdc_interior_close').css({top:'0'})


  #
  $('.vdc_interior_close').click (e) ->
    e.preventDefault()
    $('#visual_designer .vd_render_interior_select_wrapper').css({top:'0'})
    $('#visual_designer .vd_render_interior_select_wrapper').css({height:'0'})
    $('#visual_designer .vd_render_interior_select_inner').css('overflow-y', 'hidden')
    $('.vd_render_interior_title').removeClass('active_control')
    $('.vdc_interior_close').css({top:'140px'})


  #
  $('.vd_nav_ico.vd_nav').click (e) ->
    e.preventDefault()
    $('#vd_door_nav').toggleClass('right_null')
    $(this).toggleClass('passive')

  $('.vd_nav_ico.vd_comp').click (e) ->
    e.preventDefault()
#    $('.vd_interior_open').removeClass('active_control')
    $('#visual_designer .vd_render_interior_select_wrapper').css({top:'0'})
    $('#visual_designer .vd_render_interior_select_wrapper').css({height:'0'})
    $('#visual_designer .vd_render_interior_select_inner').css('overflow-y', 'hidden')
    $('.vd_render_interior_title').removeClass('active_control')
    $('.vdc_interior_close').css({top:'140px'})
    setTimeout (->
      $('#vd_components').toggleClass('bottom_null')
      $(this).toggleClass('passive')
    ),500


  $('.vdc_dor').click (e) ->
    e.preventDefault()

    $('.vd_component_one_item').removeClass('active')
    $(this).addClass('active')
    $('#vd_door_nav .vd_tab').removeClass('tab_hide')
    $('#vd_door_nav .vd_tab').addClass('tab_hide')
    $('#vd_door_nav .tab_door').removeClass('tab_hide')

  $('.vdc_laminate').click  ->

    $('.vd_component_one_item').removeClass('active')
    $(this).addClass('active')
    $('#vd_door_nav .vd_tab').removeClass('tab_hide')
    $('#vd_door_nav .vd_tab').addClass('tab_hide')
    $('#vd_door_nav .tab_laminate').removeClass('tab_hide')

#    attrRenderID = $('img.image_view').attr('data-render-interior-id')
#    $tabLaminate = $('.vd_tab.tab_laminate')
#    $tabLaminate.children().remove()
#    valuesToSubmit = {id: attrRenderID}
#    $.ajax
#      url: '/get_laminate'
#      dataType: 'xml'
#      type: "GET"
#      data: valuesToSubmit
#      beforeSend: ->
#        return
#      success: (data) ->
#        $data = $(data)
#        $images = $data.find('img')
#        $.each $images, (index, img) ->
#          $img = $(img)
#          src = $img.attr('src')
#          dataToolTip = $img.attr('data-tooltip')
#          dataSrc = $img.attr('data-src')
#          $img = $("<div class='vd_laminate_thumb' data-tooltip="+dataToolTip+"><img src="+src+" data-src="+dataSrc+" /></div>")
#          $img.appendTo($tabLaminate)
#
#        return
#
#      complete: ->
#        return

  $(".vd_tab.tab_laminate").on "click", ".vd_laminate_thumb img", ->
    largeImageLaminate = $(this).attr("data-src")
    $('.layer_laminate').remove()
    $laminate = $("<div class=\"layer_laminate\"><img src="+largeImageLaminate+"/></div>")
    $laminate.appendTo('#vd_view')
    return

  $('.vdc_wall').click ->
    $('.vd_component_one_item').removeClass('active')
    $(this).addClass('active')
    $('#vd_door_nav .vd_tab').removeClass('tab_hide')
    $('#vd_door_nav .vd_tab').addClass('tab_hide')
    $('#vd_door_nav .tab_wall').removeClass('tab_hide')

    attrRenderID = $('img.image_view').attr('data-render-interior-id')
    $tabWall = $('.vd_tab.tab_wall')
    $tabWall.children().remove()
    valuesToSubmit = {id: attrRenderID}
    $.ajax
      url: '/get_wall'
      dataType: 'xml'
      type: "GET"
      data: valuesToSubmit
      beforeSend: ->
        return
      success: (data) ->
        $data = $(data)
        $images = $data.find('img')
        $.each $images, (index, img) ->
          $img = $(img)
          src = $img.attr('src')
          dataToolTip = $img.attr('data-tooltip')
          dataSrc = $img.attr('data-src')
          $img = $("<div class='vd_wall_thumb' data-tooltip="+dataToolTip+"><img src="+src+" data-src="+dataSrc+" /></div>")
          $img.appendTo($tabWall)

        return

      complete: ->
        return

  $(".vd_tab.tab_wall").on "click", ".vd_wall_thumb img", ->
    largeImageWall = $(this).attr("data-src")
    $('.layer_wall').remove()
    $wall = $("<div class=\"layer_wall\"><img src="+largeImageWall+"/></div>")
    $wall.appendTo('#vd_view')
    return

  $('.vdc_baseboard').click ->
    $('.vd_component_one_item').removeClass('active')
    $(this).addClass('active')
    $('#vd_door_nav .vd_tab').removeClass('tab_hide')
    $('#vd_door_nav .vd_tab').addClass('tab_hide')
    $('#vd_door_nav .tab_baseboard').removeClass('tab_hide')

#    attrRenderID = $('img.image_view').attr('data-render-interior-id')
#    $tabBaseboard = $('.vd_tab.tab_baseboard')
#    $tabBaseboard.children().remove()
#    valuesToSubmit = {id: attrRenderID}
#    $.ajax
#      url: '/get_baseboard'
#      dataType: 'xml'
#      type: "GET"
#      data: valuesToSubmit
#      beforeSend: ->
#        return
#      success: (data) ->
#        $data = $(data)
#        $images = $data.find('img')
#        $.each $images, (index, img) ->
#          $img = $(img)
#          src = $img.attr('src')
#          dataToolTip = $img.attr('data-tooltip')
#          dataSrc = $img.attr('data-src')
#          $img = $("<div class='vd_baseboard_thumb' data-tooltip="+dataToolTip+"><img src="+src+" data-src="+dataSrc+" /></div>")
#          $img.appendTo($tabBaseboard)
#
#        return
#
#      complete: ->
#        return

  $(".vd_tab.tab_baseboard").on "click", ".vd_baseboard_thumb img", ->
    largeImageBaseboard = $(this).attr("data-src")
    $baseboard = $("<div class=\"layer_baseboard\"><img src="+largeImageBaseboard+"/></div>")
    $baseboard.appendTo('#vd_view')
    return