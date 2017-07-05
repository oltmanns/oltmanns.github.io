// Count values in blitzRegistered array
Object.arraySize = function (obj) {
  var arraySize = 0, key;
  for (key in obj) {
    if (obj.hasOwnProperty(key)) arraySize++;
  }
  return arraySize;
};
var arraySize = Object.arraySize(blitzRegistered);

// See if blitzRegistered array contains value (launch, surge, finish, newmember, or null)
Array.prototype.hasValue = function (value) {
  var i;
  for (i = 0; i < this.length; i++) { if (this[i] === value) return true; }
  return false;
}

showVideoAndRedirect = function (url) {
  // For large screens
  if ($(window).width() > 1300) {
    $('#registeredOne').show();
    $('#videoContainer').show();
    $('#video').html('<source src="../assets/videos/blitz/blitz-background-video.mp4" type="video/mp4"><source src="../assets/videos/blitz/blitz-background-video.webm" type="video/webm">');
    $('#video').on('ended', function () {
      window.location.href = url;
    });
    // For small screens
  } else {
    window.location.href = url;
  }
}

// Blitz Dates
var today = new Date();
var startOfLaunch = new Date('12/19/2016');
var startOfSurge = new Date('5/08/2017');
var startOfFinish = new Date('10/09/2017');

// If registered for multiple Blitz programs (use this once the surge has launched)
if ((corporateAccount === "RMX") || blitzRegistered.hasValue('newmember') && arraySize >= 2) {
  // Launch
  if (blitzRegistered.hasValue('launch')) {
    $('#buttonLaunch').text('Continue');
    $('#buttonLaunch').attr('href', 'launch.aspx');
  }
  // Surge
  if (blitzRegistered.hasValue('surge')) {
    $('#buttonSurge').text('Continue');
    $('#buttonSurge').attr('href', 'surge.aspx');
  }
  // Finish
  if (blitzRegistered.hasValue('finish')) {
    $('#buttonFinish').text('Coming Soon');
    $('#buttonFinish').attr('href', '#');
  }
  // New Member
  if (blitzRegistered.hasValue('newmember')) {
    $('#blitzPortalLaunch .blitz-portal-program-title').text('New Member');
    $('#buttonLaunch').text('Continue');
    $('#buttonLaunch').attr('href', 'newmember.aspx');
  }
}
// else, they are registered for one Blitz program (or none)
else {
  // Finish
  if (blitzRegistered.hasValue('finish')) {
    showVideoAndRedirect('finish.aspx');
    $('#buttonFinish').text('Coming Soon');
    $('#buttonFinish').attr('href', '#');
  }
  // Surge
  else if (blitzRegistered.hasValue('surge')) {
    showVideoAndRedirect('surge.aspx');
    $('#buttonSurge').text('Continue');
    $('#buttonSurge').attr('href', 'surge.aspx');
  }
  // Launch
  else if (blitzRegistered.hasValue('launch')) {
    $('#buttonLaunch').text('Continue');
    $('#buttonLaunch').attr('href', 'launch.aspx');
  }
  // New Member
  else if (blitzRegistered.hasValue('newmember')) {
    showVideoAndRedirect('newmember.aspx');
    $('#blitzPortalLaunch .blitz-portal-program-title').text('New Member');
    $('#buttonLaunch').text('Continue');
    $('#buttonLaunch').attr('href', 'newmember.aspx');
  }
  // Not Registered
  else if (blitzRegistered.hasValue('null')) {
    $('#notRegistered').fadeIn();
  }
}


