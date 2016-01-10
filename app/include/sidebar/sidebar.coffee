$ ->
  $('.btn-toggle-sidebar').bind 'click', ->
    $('.app-container').toggleClass 'app-sidebar-collapse'

  $('.app-sidebar li.dropdown > a').bind 'click', (e) ->
    e.preventDefault()
    next = $(this).siblings( ".dropdown-menu" )
    next.toggleClass('open')
    if next.height() == 0
      autoHeight = next.css('height', 'auto').height()
      next.height(0)
      next.stop().animate({ height: autoHeight }, 0);
    else
      next.css('height', 0)

  TopMenuSetting()

MenuDropdownFixPositions = (elements) ->
  elements.each( ->
    MenuDropdownPosition(this)
    )

MenuDropdownPosition = (elm) ->
  next = $(elm).siblings( ".dropdown-menu" )
  position = $(elm).offset();

  next.css('top', position.top + "px")
  next.css('left', position.left + "px")

TopMenuSetting = ->

  # Top Menu Dropdown Position
  MenuDropdownFixPositions($('.app-sidebar-top li.dropdown > a'))

  $('.app-sidebar-top .app-sidebar li.dropdown > a').unbind 'mouseenter click'
    .bind 'mouseenter click', (e) ->
      e.preventDefault()
      MenuDropdownPosition(this)
