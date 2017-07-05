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
// Get URL query string variable from URL
var id = getQueryVariable('id');
var week = getQueryVariable('week');

// Start Dates
var today = new Date();
var currentWeek;
var startOfWeek0 =  new Date('9/26/2016');
var startOfWeek1 =  new Date('10/3/2016');
var startOfWeek2 =  new Date('10/10/2016');
var startOfWeek3 =  new Date('10/17/2016');
var startOfWeek4 =  new Date('10/31/2016');
var startOfWeek5 =  new Date('11/7/2016');
var startOfWeek6 =  new Date('11/14/2016');
var startOfWeek7 =  new Date('11/21/2016');
var startOfWeek8 =  new Date('11/28/2016');
var startOfWeek9 =  new Date('12/5/2016');
var startOfWeek10 = new Date('12/12/2016');

// Set Current Week
     if (today > startOfWeek10) {currentWeek = '10';} 
else if (today > startOfWeek9)  {currentWeek = '9';} 
else if (today > startOfWeek8)  {currentWeek = '8';} 
else if (today > startOfWeek7)  {currentWeek = '7';}
else if (today > startOfWeek6)  {currentWeek = '6';}
else if (today > startOfWeek5)  {currentWeek = '5';}
else if (today > startOfWeek4)  {currentWeek = '4';}
else if (today > startOfWeek3)  {currentWeek = '3';}
else if (today > startOfWeek2)  {currentWeek = '2';}
else if (today > startOfWeek1)  {currentWeek = '1';}
else if (today > startOfWeek0)  {currentWeek = '0';}

// Don't allow user to go past current week
function goToCurrentWeek() {
  window.location.href="default.aspx?week="+currentWeek;
}

// Navigation Event Handling (large screens)
function setNavigation(weekNumber) {
  $('#weeklyNavList a').removeClass('is-active');
  $('#weeklyNavSelect').val(weekNumber).change();
  $('#weeklyNavSelect option:gt(' + currentWeek +')').attr('disabled', 'disabled');
  $('a[href="?week=' + weekNumber +'"]').addClass('is-active');
  $('#weeklyNavList a:gt(' + currentWeek +')').removeAttr('href').addClass('is-disabled');
}

// Navigation Event Handling (small screens)
$(function(){
  $('#weeklyNavSelect').on('change', function () {
    var value = $(this).val();
    if (value) {
      window.location = "?week=" + value;
    }
    return false;
  });
});

// Process Weekly Data from assets/data/blitz/..
function processWeeklyData(weekNumber) {
  var outputWeeklyVideo = "";
  var outputResourceListVideos = "";
  var outputResourceListPrint = "";
  var outputResourceListAudio = "";

  $.each(weekNumber, function() {
    // Weekly Video
    $.each(this.weeklyVideo, function() {
      outputWeeklyVideo += '<p>' + this.title + '</p>';
      outputWeeklyVideo += '<p>' + this.description + '</p>';
    });
    // Action Steps
    $.each(this.actionSteps, function() {
      outputWeeklyVideo += '<p>' + this.title + '</p>';
      outputWeeklyVideo += '<p>' + this.description + '</p>';
    });  
    // Resources
    $.each(this.resourceListVideos, function() {
      outputResourceListVideos += '<li><a href="' + this.id + '">' + this.title + '</a></li>';
    });
    $.each(this.resourceListPrint, function() {
      outputResourceListPrint += '<li><a href="assets/documents/blitz/' + this.link + '">' + this.title + '</a></li>';
    });
    $.each(this.resourceListAudio, function() {
      outputResourceListAudio += '<li><a href="assets/audio/blitz/' + this.link + '">' + this.title + '</a></li>';
    });
  });
  $('#weeklyVideo').html(outputWeeklyVideo);
  $('#resourceListVideos').html(outputResourceListVideos); 
  $('#resourceListPrint').html(outputResourceListPrint); 
  $('#resourceListAudio').html(outputResourceListAudio); 
}


// Load based on week # in query string
switch(week) {
  case '0':
    if(today > startOfWeek0) {
      processWeeklyData(week0);
      setNavigation('0');
    } else {
      goToCurrentWeek();
    }
    break;
  case '1':
    if(today > startOfWeek1) {
      processWeeklyData(week1);
      setNavigation('1');
    } else {
      goToCurrentWeek();
    }
    break;
  case '2':
    if(today > startOfWeek2) {
      processWeeklyData(week2);
      setNavigation('2');
    } else {
      goToCurrentWeek();
    }
    break;
  case '3':
    if(today > startOfWeek3) {
      processWeeklyData(week3);
      setNavigation('3');
    } else {
      goToCurrentWeek();
    }
    break;
  case '4':
    if(today > startOfWeek4) {
      processWeeklyData(week4);
      setNavigation('4');
    } else {
      goToCurrentWeek();
    }
    break;
  case '5':
    if(today > startOfWeek5) {
      processWeeklyData(week5);
      setNavigation('5');
    } else {
      goToCurrentWeek();
    }
    break;
  case '6':
    if(today > startOfWeek6) {
      processWeeklyData(week6);
      setNavigation('6');
    } else {
      goToCurrentWeek();
    }
    break;
  case '7':
    if(today > startOfWeek7) {
      processWeeklyData(week7);
      setNavigation('7');
    } else {
      goToCurrentWeek();
    }
    break;
  case '8':
    if(today > startOfWeek8) {
      processWeeklyData(week8);
      setNavigation('8');
    } else {
      goToCurrentWeek();
    }
    break;
  case '9':
    if(today > startOfWeek9) {
      processWeeklyData(week9);
      setNavigation('9');
    } else {
      goToCurrentWeek();
    }
    break;
  case '10':
    if(today > startOfWeek10) {
      processWeeklyData(week10);
      setNavigation('10');
    } else {
      goToCurrentWeek();
    }
    break;
    default:
      goToCurrentWeek();
}

// Initialize foundation 'equalizer' plugin on page load
// Make sidebar and main content area have similar height
Foundation.reInit('equalizer');