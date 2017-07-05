// Get Query String variables from URL (these functions are located in global.js)
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
if (today > startOfWeek10) { currentWeek = '10'; }
else if (today > startOfWeek9) { currentWeek = '9'; }
else if (today > startOfWeek8) { currentWeek = '8'; }
else if (today > startOfWeek7) { currentWeek = '7'; }
else if (today > startOfWeek6) { currentWeek = '6'; }
else if (today > startOfWeek5) { currentWeek = '5'; }
else if (today > startOfWeek4) { currentWeek = '4'; }
else if (today > startOfWeek3) { currentWeek = '3'; }
else if (today > startOfWeek2) { currentWeek = '2'; }
else if (today > startOfWeek1) { currentWeek = '1'; }
else if (today > startOfWeek0) { currentWeek = '0'; }

// Don't allow user to go past current week
function goToCurrentWeek() {
  window.location.href = "?week=" + currentWeek;
}

// If week is not selected from dropdown, go to current week
if (week === false) {
  goToCurrentWeek();
}

// Navigation
function setNavigation(weekNumber) {
  // Add active/disabled classes to weekly nav to indicate current week
  $('#weeklyNavDropDownLink span').html('Week ' + weekNumber);
  if (week == 0) {
    $('#weeklyNavDropDownLink span').html('Prep Module');
  }
  $('#weeklyNav a').removeClass('is-active');
  $('#weeklyNav a[href="?week=' + weekNumber + '"]').addClass('is-active');
  $('#weeklyNav a:gt(' + currentWeek +')').removeAttr('href').addClass('is-disabled');
}

// Week Title
function setWeekTitle(weekTitle) {
  $('#weekTitle').html(weekTitle);
}

// Process Weekly Action Step Data from assets/data/blitz/..
function processActionSteps(weekNumber) {
  var outputActionStepsDay1 = "";
  var outputActionStepsDay2 = "";
  var outputActionStepsDay3 = "";
  var outputActionStepsDay4 = "";
  var outputActionStepsDay5 = "";
  $.each(weekNumber, function () {
    // Action Steps
    $.each(this.actionStepsDay1, function () {
      outputActionStepsDay1 += '<div class="row blitz-action-task">';
      outputActionStepsDay1 += '<div class="columns blitz-action-task-description"><span>' + this.task + '</span></div>';
      outputActionStepsDay1 += '<div class="columns blitz-action-task-inputs">';
      $.each(this.input, function () {
        outputActionStepsDay1 += '<input id="Week' + week + '_Day1_Task' + this.taskNumber + '_Input' + this.inputNumber + '" type="' + this.type + '" name="Day1_Task' + this.taskNumber + '"' + this.checked + ' /><label for="Week' + week + '_Day1_Task' + this.taskNumber + '_Input' + this.inputNumber + '"></label>'
      });
      outputActionStepsDay1 += '</div>';
      outputActionStepsDay1 += '<div class="blitz-action-block-success">Good Job!</div>';
      outputActionStepsDay1 += '</div>';
    });
    $.each(this.actionStepsDay2, function () {
      outputActionStepsDay2 += '<div class="row blitz-action-task">';
      outputActionStepsDay2 += '<div class="columns blitz-action-task-description"><span>' + this.task + '</span></div>';
      outputActionStepsDay2 += '<div class="columns blitz-action-task-inputs">';
      $.each(this.input, function () {
        outputActionStepsDay2 += '<input id="Week' + week + '_Day2_Task' + this.taskNumber + '_Input' + this.inputNumber + '" type="' + this.type + '" name="Day2_Task' + this.taskNumber + '"' + this.checked + ' /><label for="Week' + week + '_Day2_Task' + this.taskNumber + '_Input' + this.inputNumber + '"></label>'
      });
      outputActionStepsDay2 += '</div>';
      outputActionStepsDay2 += '<div class="blitz-action-block-success">Awesome!</div>';
      outputActionStepsDay2 += '</div>';
    });
    $.each(this.actionStepsDay3, function () {
      outputActionStepsDay3 += '<div class="row blitz-action-task">';
      outputActionStepsDay3 += '<div class="columns blitz-action-task-description"><span>' + this.task + '</span></div>';
      outputActionStepsDay3 += '<div class="columns blitz-action-task-inputs">';
      $.each(this.input, function () {
        outputActionStepsDay3 += '<input id="Week' + week + '_Day3_Task' + this.taskNumber + '_Input' + this.inputNumber + '" type="' + this.type + '" name="Day3_Task' + this.taskNumber + '"' + this.checked + ' /><label for="Week' + week + '_Day3_Task' + this.taskNumber + '_Input' + this.inputNumber + '"></label>'
      });
      outputActionStepsDay3 += '</div>';
      outputActionStepsDay3 += '<div class="blitz-action-block-success">Keep going!</div>';
      outputActionStepsDay3 += '</div>';
    });
    $.each(this.actionStepsDay4, function () {
      outputActionStepsDay4 += '<div class="row blitz-action-task">';
      outputActionStepsDay4 += '<div class="columns blitz-action-task-description"><span>' + this.task + '</span></div>';
      outputActionStepsDay4 += '<div class="columns blitz-action-task-inputs">';
      $.each(this.input, function () {
        outputActionStepsDay4 += '<input id="Week' + week + '_Day4_Task' + this.taskNumber + '_Input' + this.inputNumber + '" type="' + this.type + '" name="Day4_Task' + this.taskNumber + '"' + this.checked + ' /><label for="Week' + week + '_Day4_Task' + this.taskNumber + '_Input' + this.inputNumber + '"></label>'
      });
      outputActionStepsDay4 += '</div>';
      outputActionStepsDay4 += '<div class="blitz-action-block-success">Woohoo!</div>';
      outputActionStepsDay4 += '</div>';
    });
    $.each(this.actionStepsDay5, function () {
      outputActionStepsDay5 += '<div class="row blitz-action-task">';
      outputActionStepsDay5 += '<div class="columns blitz-action-task-description"><span>' + this.task + '</span></div>';
      outputActionStepsDay5 += '<div class="columns blitz-action-task-inputs">';
      $.each(this.input, function () {
        outputActionStepsDay5 += '<input id="Week' + week + '_Day5_Task' + this.taskNumber + '_Input' + this.inputNumber + '" type="' + this.type + '" name="Day5_Task' + this.taskNumber + '"' + this.checked + ' /><label for="Week' + week + '_Day5_Task' + this.taskNumber + '_Input' + this.inputNumber + '"></label>'
      });
      outputActionStepsDay5 += '</div>';
      outputActionStepsDay5 += '<div class="blitz-action-block-success">Well done!</div>';
      outputActionStepsDay5 += '</div>';
    });
  });
  $('#actionStepsDay1').html(outputActionStepsDay1);
  $('#actionStepsDay2').html(outputActionStepsDay2);
  $('#actionStepsDay3').html(outputActionStepsDay3);
  $('#actionStepsDay4').html(outputActionStepsDay4);
  $('#actionStepsDay5').html(outputActionStepsDay5);
}

function processResults(weekNumber) {
  var outputReferralsThisWeek = "";
  var outputTransactionsThisWeek = "";
  $.each(weekNumber, function () {
    outputReferralsThisWeek = this.referralsThisWeek;
    outputTransactionsThisWeek = this.transactionsThisWeek;
  });
  $('#referralsThisWeek').attr('value', outputReferralsThisWeek);
  $('#transactionsThisWeek').attr('value', outputTransactionsThisWeek);
}

// Adjust content "week finished" modal based on current week
function adjustWeekFinishedModal() {
  var valueThisWeek = parseInt(week);
  var valueNextweek = valueThisWeek + 1;
  $('#modalCurrentWeek').html("Week " + valueThisWeek);
  // If Prep Module
  if (valueThisWeek == 0) {
    $('#modalCurrentWeek').html("Prep Module");
  }
  // If Final Week
  if (valueThisWeek == 10) {
    $('#modalWeekFinishedHeadline').html('You finished the Blitz!');
    $('#modalLinkToNextWeek').remove();
  }
  $('#modalNextWeekNumber').html(valueNextweek);
  $('#modalLinkToNextWeek').attr('href', '?week=' + valueNextweek);

  if (valueNextweek > currentWeek) {
    $('#modalLinkToNextWeek').remove();
  }
}
adjustWeekFinishedModal();

// Process Weekly Resource Data from assets/data/blitz/..
function processResources(weekNumber) {
  var outputWeeklyVideo = "";
  var outputResourcesVideo = "";
  var outputResourcesPrint = "";
  var outputResourcesAudio = "";
  var outputResourcesLinks = "";
  $.each(weekNumber, function () {
    // Weekly Video
    $.each(this.weekTitle, function () {
      $('#weekTitle').attr('src', 'https://players.brightcove.net/775290559001/b7585712-dc7a-48d2-8716-b44e6d98d4e2_default/index.html?videoId=' + this.id);
    });
    $.each(this.weeklyVideo, function () {
      $('#weeklyVideo').attr('src', 'https://players.brightcove.net/775290559001/b7585712-dc7a-48d2-8716-b44e6d98d4e2_default/index.html?videoId=' + this.id);
    });

    // Resourcess
    $.each(this.resourcesPrint, function () {
      outputResourcesPrint += '<div class="column">'
      outputResourcesPrint += '<a>'
      outputResourcesPrint += '<div class="card blitz-card">'
      outputResourcesPrint += '<div class="card-image">'
      outputResourcesPrint += '<img src="assets/images/thumbnails/' + this.image + '" />'
      outputResourcesPrint += '</div>'
      outputResourcesPrint += '<div class="card-content">' + this.title + '</div>'
      outputResourcesPrint += '</div>'
      outputResourcesPrint += '</a>'
      outputResourcesPrint += '</div>'
    });
    $.each(this.resourcesAudio, function () {
      outputResourcesAudio += '<div class="column">'
      outputResourcesAudio += '<a id="' + this.link + '"' + 'data-open="modalAudio">'
      outputResourcesAudio += '<div class="card blitz-card">'
      outputResourcesAudio += '<div class="card-image">'
      outputResourcesAudio += '<img src="assets/images/thumbnails/' + this.image + '" />'
      outputResourcesAudio += '</div>'
      outputResourcesAudio += '<div class="card-content">' + this.title + '</div>'
      outputResourcesAudio += '</div>'
      outputResourcesAudio += '</a>'
      outputResourcesAudio += '</div>'
    });
    $.each(this.resourcesVideo, function () {
      outputResourcesVideo += '<div class="column">'
      outputResourcesVideo += '<a id="' + this.id + '"' + 'data-open="modalVideo">'
      outputResourcesVideo += '<div class="card blitz-card">'
      outputResourcesVideo += '<div class="card-image">'
      outputResourcesVideo += '<img src="assets/images/thumbnails/' + this.image + '" />'
      outputResourcesVideo += '</div>'
      outputResourcesVideo += '<div class="card-content">' + this.title + '</div>'
      outputResourcesVideo += '</div>'
      outputResourcesVideo += '</a>'
      outputResourcesVideo += '</div>'
    });
    $.each(this.resourcesLinks, function () {
      outputResourcesLinks += '<li>'
      outputResourcesLinks += '<a href="' + this.link + '"' + 'target="_blank" class="blitz-resource-tracking">' + this.title + '</a>'
      outputResourcesLinks += '</li>'
    });
  });
  $('#weeklyVideo').html(outputWeeklyVideo);
  $('#resourcesPrint').html(outputResourcesPrint);
  $('#resourcesAudio').html(outputResourcesAudio);
  $('#resourcesVideo').html(outputResourcesVideo);
  $('#resourcesLinks').html(outputResourcesLinks);
}

// Load content based on week # in query string
switch (week) {
  case '0':
    setNavigation('0');
    setWeekTitle('Prep Module');
    processActionSteps(actionStepsWeek0);
    processResults(actionStepsWeek0);
    processResources(resourcesWeek0);
    break;
  case '1':
    setNavigation('1');
    setWeekTitle('Week 1: Referral Recipe');
    processActionSteps(actionStepsWeek1);
    processResults(actionStepsWeek1);
    processResources(resourcesWeek1);
    break;
  case '2':
    setNavigation('2');
    setWeekTitle('Week 2: Dialing for Dollars');
    processActionSteps(actionStepsWeek2);
    processResults(actionStepsWeek2);
    processResources(resourcesWeek2);
    break;
  case '3':
    setNavigation('3');
    setWeekTitle('Week 3: Practice Makes Perfect');
    processActionSteps(actionStepsWeek3);
    processResults(actionStepsWeek3);
    processResources(resourcesWeek3);
    break;
  case '4':
    setNavigation('4');
    setWeekTitle('Week 4: Let’s Do Lunch');
    processActionSteps(actionStepsWeek4);
    processResults(actionStepsWeek4);
    processResources(resourcesWeek4);
    break;
  case '5':
    setNavigation('5');
    setWeekTitle('Week 5: Cultivate, Capture, &amp; Cash-in on Old Leads');
    processActionSteps(actionStepsWeek5);
    processResults(actionStepsWeek5);
    processResources(resourcesWeek5);
    break;
  case '6':
    setNavigation('6');
    setWeekTitle('Week 6: Moving Buyers Off the Fence');
    processActionSteps(actionStepsWeek6);
    processResults(actionStepsWeek6);
    processResources(resourcesWeek6);
    break;
  case '7':
    setNavigation('7');
    setWeekTitle('Week 7: Leverage Yourself with Listings');
    processActionSteps(actionStepsWeek7);
    processResults(actionStepsWeek7);
    processResources(resourcesWeek7);
    break;
  case '8':
    setNavigation('8');
    setWeekTitle('Week 8: Getting Down to Business');
    processActionSteps(actionStepsWeek8);
    processResults(actionStepsWeek8);
    processResources(resourcesWeek8);
    break;
  case '9':
    setNavigation('9');
    setWeekTitle('Week 9: Lights, Camera, Action');
    processActionSteps(actionStepsWeek9);
    processResults(actionStepsWeek9);
    processResources(resourcesWeek9);
    break;
  case '10':
    setNavigation('10');
    setWeekTitle('Week 10: Crossing the Finish Line');
    processActionSteps(actionStepsWeek10);
    processResults(actionStepsWeek10);
    processResources(resourcesWeek10);
    break;
  default:
    goToCurrentWeek();
}

function makeBlitzTimer() {
  var endTime = new Date("June 12, 2017 00:00:00 PDT");
  var endTime = (Date.parse(endTime)) / 1000;
  var now = new Date();
  var now = (Date.parse(now) / 1000);
  var timeLeft = endTime - now;
  var days = Math.floor(timeLeft / 86400);
  var hours = Math.floor((timeLeft - (days * 86400)) / 3600);
  var minutes = Math.floor((timeLeft - (days * 86400) - (hours * 3600)) / 60);
  var seconds = Math.floor((timeLeft - (days * 86400) - (hours * 3600) - (minutes * 60)));

  if (hours < "10") { hours = "0" + hours; }
  if (minutes < "10") { minutes = "0" + minutes; }
  if (seconds < "10") { seconds = "0" + seconds; }

  $("#blitzTimerDays").html(days);
  $("#blitzTimerHours").html(hours);
  $("#blitzTimerMinutes").html(minutes);
  $("#blitzTimerSeconds").html(seconds);
}
setInterval(function () { makeBlitzTimer(); }, 1000);