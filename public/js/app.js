var MenuDropdownFixPositions, MenuDropdownPosition, TopMenuSetting;

$(function() {
  $('.btn-toggle-sidebar').bind('click', function() {
    return $('.app-container').toggleClass('app-sidebar-collapse');
  });
  $('.app-sidebar li.dropdown > a').bind('click', function(e) {
    var autoHeight, next;
    e.preventDefault();
    next = $(this).siblings(".dropdown-menu");
    next.toggleClass('open');
    if (next.height() === 0) {
      autoHeight = next.css('height', 'auto').height();
      next.height(0);
      return next.stop().animate({
        height: autoHeight
      }, 0);
    } else {
      return next.css('height', 0);
    }
  });
  return TopMenuSetting();
});

MenuDropdownFixPositions = function(elements) {
  return elements.each(function() {
    return MenuDropdownPosition(this);
  });
};

MenuDropdownPosition = function(elm) {
  var next, position;
  next = $(elm).siblings(".dropdown-menu");
  position = $(elm).offset();
  next.css('top', position.top + "px");
  return next.css('left', position.left + "px");
};

TopMenuSetting = function() {
  MenuDropdownFixPositions($('.app-sidebar-top li.dropdown > a'));
  return $('.app-sidebar-top .app-sidebar li.dropdown > a').unbind('mouseenter click').bind('mouseenter click', function(e) {
    e.preventDefault();
    return MenuDropdownPosition(this);
  });
};

$(function() {
  return $('.equal-height-item').matchHeight({
    target: $('.equal-height-container')
  });
});
