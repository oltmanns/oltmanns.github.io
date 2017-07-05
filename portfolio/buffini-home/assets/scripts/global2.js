// Open Nav
$('[data-nav-primary-item] [data-open-nav]').on('click', function() {
  $('body').addClass('nav-is-active');
  var navTarget = $(this).data('open-nav');
  $('[data-nav-primary-item]').removeClass('is-active');
  $(this).parent().addClass('is-active');
  $('#navSecondary').addClass('is-active');
  $('#navToggleSecondary').addClass('is-active');
  $('[data-menu-secondary]').addClass('hide');
  $('[data-menu-secondary="'+navTarget+'"]').removeClass('hide');
}); 


// Toggle Nav for Mobile
$('#navTogglePrimary').on('click', function () {
  if ($('#navTogglePrimary').hasClass('is-active')) {
    $(this).removeClass('is-active');
    $('body').removeClass('nav-is-active');
    $('#navSecondary').removeClass('is-active');
    $('#navPrimary').removeClass('is-active');
    $('#navToggleSecondary').removeClass('is-active');
  } else {
    $(this).addClass('is-active');
    $('body').addClass('nav-is-active');
    $('#navPrimary').addClass('is-active');
  }
});

$('#navToggleSecondary').on('click', function () {
  $('#navPrimary').addClass('is-active');
  $('#navSecondary').removeClass('is-active');
  $('#navToggleSecondary').removeClass('is-active');
});


// Close Nav
$('[data-nav-primary-item].is-active').on('click', function() {
  $(this).removeClass('is-active');
  $('body').removeClass('nav-is-active');
});
$('[data-close-nav]').on('click', function () {
  $('body').removeClass('nav-is-active');
  $('#navSecondary').removeClass('is-active');
  $('#navToggleSecondary').removeClass('is-active');
  $('[data-nav-primary-item]').removeClass('is-active');
});
$('body').on('click', function(event) { 
  if ($(event.target).closest('#navSecondary.is-active, #navPrimary').length === 0) {
    $('body').removeClass('nav-is-active');
    $('#navSecondary').removeClass('is-active');
    $('#navToggleSecondary').removeClass('is-active');
    $('[data-nav-primary-item]').removeClass('is-active');
  }
});