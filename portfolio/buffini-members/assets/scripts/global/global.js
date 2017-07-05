$(document).foundation();

// Adjust state of menu depending on the current page
$(document).ready(function() {
  if (window.location.href.indexOf("members-area/default") > -1) {
    $('#primary-menu a[href*="members-area/default"]').addClass('active');
  }
  if (window.location.href.indexOf("marketing") > -1) {
    $('#primary-menu').foundation('down', $('#tools [data-submenu]'));
    $('#tools a[href*="marketing"]').addClass('active');
  }
  if (window.location.href.indexOf("heritage-profile") > -1) {
    $('#primary-menu').foundation('down', $('#tools [data-submenu]'));
    $('#tools a[href*="heritage-profile"]').addClass('active');
  }
  if (window.location.href.indexOf("tracking") > -1) {
    $('#primary-menu').foundation('down', $('#tools [data-submenu]'));
    $('#tools a[href*="tracking"]').addClass('active');
  }
  if (window.location.href.indexOf("resources") > -1) {
    $('#primary-menu').foundation('down', $('#resources [data-submenu]'));
    $('#resources a[href*="resources"]').addClass('active');
  }
  if (window.location.href.indexOf("pop-by-tags") > -1) {
    $('#primary-menu').foundation('down', $('#resources [data-submenu]'));
    $('#resources a[href*="resources"]').addClass('active');
  }
  if (window.location.href.indexOf("groups") > -1) {
    $('#primary-menu').foundation('down', $('#networking [data-submenu]'));
    $('#networking a[href*="groups"]').addClass('active');
  }
  if (window.location.href.indexOf("videos") > -1 || window.location.href.indexOf("bit-o-brian") > -1 || window.location.href.indexOf("training-videos") > -1 || window.location.href.indexOf("webcast-archive") > -1) {
    $('#primary-menu').foundation('down', $('#resources [data-submenu]'));
    $('#resources a[href*="videos"]').addClass('active');
  }
  if (window.location.href.indexOf("followup") > -1) {
    $('#primary-menu').foundation('down', $('#networking [data-submenu]'));
    $('#networking a[href*="followup"]').addClass('active');
  }
  if (window.location.href.indexOf("contact") > -1) {
    $('a[href*="contact"]').addClass('active');
  }
}); 

//Get URL query string
function getQueryVariable(variable) {
  var query = window.location.search.substring(1);
  var vars = query.split("&");
  for (var i = 0; i < vars.length; i++) {
    var pair = vars[i].split("=");
    if (pair[0] == variable) { return pair[1]; }
  }
  return (false);
}