# Navbar
$ ->
  $(".navbar-expand-toggle").click ->
    $(".app-container").toggleClass "expanded"
    $(".navbar-expand-toggle").toggleClass "fa-rotate-90"
  
  $(".navbar-right-expand-toggle").click ->
    $(".navbar-right").toggleClass "expanded"
    $(".navbar-right-expand-toggle").toggleClass "fa-rotate-90"

# iCheck
$ ->
  $('.input-checkbox, .input-radio').iCheck
      checkboxClass: 'icheckbox_flat'
      radioClass: 'iradio_flat'
    return

$ ->
  $('select').select2();

# Bootstrap Toggle
$ ->
  $('.toggle-checkbox').bootstrapSwitch();


# Match Height
$ ->
  $('.match-height').matchHeight();

# DataTable
$ ->
  $('.datatable').DataTable({
    "dom": '<"top"fl<"clear">>rt<"bottom"ip<"clear">>'
    });