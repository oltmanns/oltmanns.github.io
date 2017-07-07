// Query String Variables
var id = getQueryVariable('id');
var week = getQueryVariable('week');
var unlocked = getQueryVariable('unlocked');


// Start Dates - For surge
var today = new Date();
var currentWeek;
var startOfWeek0 = new Date('5/8/2017');
var startOfWeek1 = new Date('6/10/2017');
var startOfWeek2 = new Date('6/17/2017');
var startOfWeek3 = new Date('6/24/2017');
var startOfWeek4 = new Date('7/1/2017');
var startOfWeek5 = new Date('7/8/2017');
var startOfWeek6 = new Date('7/15/2017');


// Unlock week if query string is present (for internal review purposes)
if (unlocked === "true") {
  var startOfWeek0 = today - 1;
  var startOfWeek1 = today - 1;
  var startOfWeek2 = today - 1;
  var startOfWeek3 = today - 1;
  var startOfWeek4 = today - 1;
  var startOfWeek5 = today - 1;
  var startOfWeek6 = today - 1;
}


// Set Current Week
if (today > startOfWeek6) { currentWeek = '6'; }
else if (today > startOfWeek5) { currentWeek = '5'; }
else if (today > startOfWeek4) { currentWeek = '4'; }
else if (today > startOfWeek3) { currentWeek = '3'; }
else if (today > startOfWeek2) { currentWeek = '2'; }
else if (today > startOfWeek1) { currentWeek = '1'; }
else if (today > startOfWeek0) { currentWeek = '0'; }


// Don't allow user to go past current week
function goToCurrentWeek() {
  window.location.href = "?week=" + currentWeek;
  if (today < startOfWeek0) {
    window.location.href = "default.aspx"
  }
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
  $('#weeklyNav a:gt(' + currentWeek + ')').removeAttr('href').addClass('is-disabled');
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
  if (valueThisWeek == 6) {
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
  var outputHelpVideo = "";
  $.each(weekNumber, function () {
    // Weekly Video
    $.each(this.weekTitle, function () {
      $('#weekTitle').attr('src', 'https://players.brightcove.net/775290559001/b7585712-dc7a-48d2-8716-b44e6d98d4e2_default/index.html?videoId=' + this.id);
    });
    $.each(this.weeklyVideo, function () {
      outputWeeklyVideo += '<video data-video-id="' + this.id + '" data-account="775290559001" data-player="b7585712-dc7a-48d2-8716-b44e6d98d4e2" data-embed="default" data-application-id class="video-js" '
      outputWeeklyVideo += 'controls style="width: 100%; height: 100%; position: absolute; top: 0px; bottom: 0px; right: 0px; left: 0px;">'
      outputWeeklyVideo += '</video>'
      outputWeeklyVideo += '<script src="//players.brightcove.net/775290559001/b7585712-dc7a-48d2-8716-b44e6d98d4e2_default/index.min.js"></script>'
    });
    // Resourcess
    $.each(this.resourcesPrint, function () {
      outputResourcesPrint += '<div class="column">'
      outputResourcesPrint += '<a href="../assets/documents/blitz/surge/' + this.link + '" target="_blank" class="blitz-resource-tracking">'
      outputResourcesPrint += '<div class="card blitz-card">'
      outputResourcesPrint += '<div class="card-image">'
      outputResourcesPrint += '<img src="../assets/images/thumbnails/blitz/' + this.image + '" />'
      outputResourcesPrint += '</div>'
      outputResourcesPrint += '<div class="card-content">' + this.title + '</div>'
      outputResourcesPrint += '</div>'
      outputResourcesPrint += '</a>'
      outputResourcesPrint += '</div>'
    });
    $.each(this.resourcesAudio, function () {
      outputResourcesAudio += '<div class="column">'
      outputResourcesAudio += '<a id="' + this.link + '"' + 'data-open="modalAudio" class="blitz-resource-tracking">'
      outputResourcesAudio += '<div class="card blitz-card">'
      outputResourcesAudio += '<div class="card-image">'
      outputResourcesAudio += '<img src="../assets/images/thumbnails/blitz/' + this.image + '" />'
      outputResourcesAudio += '</div>'
      outputResourcesAudio += '<div class="card-content">' + this.title + '</div>'
      outputResourcesAudio += '</div>'
      outputResourcesAudio += '</a>'
      outputResourcesAudio += '</div>'
    });
    $.each(this.resourcesVideo, function () {
      outputResourcesVideo += '<div class="column">'
      outputResourcesVideo += '<a id="' + this.id + '"' + 'data-open="modalVideo" class="blitz-resource-tracking">'
      outputResourcesVideo += '<div class="card blitz-card">'
      outputResourcesVideo += '<div class="card-image">'
      outputResourcesVideo += '<img src="../assets/images/thumbnails/blitz/' + this.image + '" />'
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
    // Help Video (shows after main video)
    $.each(this.helpVideo, function () {
      outputHelpVideo += '<h4>' + this.title + '</h4>'
      outputHelpVideo += '<div class="responsive-embed widescreen">'
      outputHelpVideo += '<iframe src="https://players.brightcove.net/775290559001/b7585712-dc7a-48d2-8716-b44e6d98d4e2_default/index.html?videoId=' + this.id + '"' + '></iframe>'
      outputHelpVideo += '</div>'
    });
  });
  $('#weeklyVideo').html(outputWeeklyVideo);
  $('#resourcesPrint').html(outputResourcesPrint);
  $('#resourcesAudio').html(outputResourcesAudio);
  $('#resourcesVideo').html(outputResourcesVideo);
  $('#resourcesLinks').html(outputResourcesLinks);
  $('#helpVideo').html(outputHelpVideo);
}

function showHelpVideoAfterWeeklyVideo() {
  // Show Help Video when Weekly Video has ended
  $('#weeklyVideo video').on('ended', function () {
    $('#modalHelpVideo').foundation('open');
  });
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


// Load content based on week # in query string
switch (week) {
  case '0':
    if (today > startOfWeek0) {
      setNavigation('0');
      setWeekTitle('Prep Module');
      $('#weeklyActionStepsSection').hide();
      $('a[href="#weeklyActionStepsSection"]').attr('href', '#prepModuleActionStepsSection');
      $('#prepModuleActionStepsSection').removeClass('hide');
      processActionSteps(actionStepsWeek0);
      processResults(actionStepsWeek0);
      processResources(resourcesWeek0);
    } else {
      goToCurrentWeek();
    }
    break;
  case '1':
    if (today > startOfWeek1) {
      setNavigation('1');
      setWeekTitle('Week 1: Hitting a Home Run with the Fundamentals');
      processActionSteps(actionStepsWeek1);
      processResults(actionStepsWeek1);
      processResources(resourcesWeek1);
      showHelpVideoAfterWeeklyVideo();
    } else {
      goToCurrentWeek();
    }
    break;
  case '2':
    if (today > startOfWeek2) {
      setNavigation('2');
      setWeekTitle('Week 2: Popping By with a Dose of Sunshine');
      processActionSteps(actionStepsWeek2);
      processResults(actionStepsWeek2);
      processResources(resourcesWeek2);
      showHelpVideoAfterWeeklyVideo();
    } else {
      goToCurrentWeek();
    }
    break;
  case '3':
    if (today > startOfWeek3) {
      setNavigation('3');
      setWeekTitle('Week 3: Cutting the Cord on Calls');
      processActionSteps(actionStepsWeek3);
      processResults(actionStepsWeek3);
      processResources(resourcesWeek3);
      showHelpVideoAfterWeeklyVideo();
    } else {
      goToCurrentWeek();
    }
    break;
  case '4':
    if (today > startOfWeek4) {
      setNavigation('4');
      setWeekTitle('Week 4: Staying on the Referral Train');
      processActionSteps(actionStepsWeek4);
      processResults(actionStepsWeek4);
      processResources(resourcesWeek4);
      showHelpVideoAfterWeeklyVideo();
    } else {
      goToCurrentWeek();
    }
    break;
  case '5':
    if (today > startOfWeek5) {
      setNavigation('5');
      setWeekTitle('Week 5: Brewing Up Referrals');
      processActionSteps(actionStepsWeek5);
      processResults(actionStepsWeek5);
      processResources(resourcesWeek5);
      showHelpVideoAfterWeeklyVideo();
    } else {
      goToCurrentWeek();
    }
    break;
  case '6':
    if (today > startOfWeek6) {
      setNavigation('6');
      setWeekTitle('Week 6: Business Over Breakfast');
      processActionSteps(actionStepsWeek6);
      processResults(actionStepsWeek6);
      processResources(resourcesWeek6);
      showHelpVideoAfterWeeklyVideo();
    } else {
      goToCurrentWeek();
    }
    break;
  default:
    goToCurrentWeek();
}


$(document).ready(function () {

  //eReport - Trigger eReport modal when clicking on eReport resource
  $('#weeklyResourcesSection a[href*="modalEReportWeek5"]').on('click', function (e) {
    e.preventDefault();
    $('#modalEReport').foundation('open');
    $("#eReportIntro").text("Dear Friend, You are important to me and my business. Working by referral allows me to maintain our relationship and serve you even after our transaction has closed. The information below explains the reason I work by referral and lists the ways I can help you after the sale.");
    $("#eReportImage").attr("src", "http://members.buffiniandcompany.com/cap/docs/Why-I-Work-By-Referral-Bonus-eReport.jpg");
  });
  $('#weeklyResourcesSection a[href*="modalEReportWeek9USA"]').on('click', function (e) {
    e.preventDefault();
    $('#modalEReport').foundation('open');
    $("#eReportIntro").text("Buying a home is a big decision. The March eReport lists five questions your clients should ask before they decide to buy. This is a competence piece intended to help motivate buyers off the fence.");
    $("#eReportImage").attr("src", "https://www.buffiniandcompany.com/assets/images/products/cap/2017/standard/RMMK_March_S_eReport.jpg");
  });
  $('#weeklyResourcesSection a[href*="modalEReportWeek9CAN"]').on('click', function (e) {
    e.preventDefault();
    $('#modalEReport').foundation('open');
    $("#eReportIntro").text("Buying a home is a big decision. The March eReport lists five questions your clients should ask before they decide to buy. This is a competence piece intended to help motivate buyers off the fence.");
    $("#eReportImage").attr("src", "https://www.buffiniandcompany.com/assets/images/products/cap/2017/canadian/RMMK_March_C_eReport.jpg");
  });

  // Process Action Steps
  var lastReferralWeekTotal;
  var lastTransactionWeekTotal;

  $('#weeklyActionStepsSection input[type=checkbox],[type=radio]').click(function () {

    $.ajax({
      url: "surge.aspx/updateBlitzTask",
      data: "{ 'strTaskID': '" + $(this).attr('id') + "', 'isChecked': '" + $(this).prop('checked') + "', 'userID': '" + userID + "' }",
      dataType: "json",
      type: "POST",
      contentType: "application/json; charset=utf-8",
      dataFilter: function (data) { return data; },
      success: function (data, status) {
        $("#yourProgressMeter").css("height", parseInt(parseInt($('#hdnTotalTasks').val()) / 174 * 100) + "%");
        $("#yourProgressMeterInfo").html(data.d + ' / 146 <span>Tasks completed</span>');
      },
      error: function (xhr, textStatus, errorThrown) {
        var respMsg = JSON.parse(xhr.responseText);
        alert("Error in updateBlitzTask:\n" + respMsg.Message);
        if (typeof xhr == 'undefined') {
          LogJavascriptError(window.location.pathname, textStatus.toString(), errorThrown.toString(), "updateBlitzTask");
        } else {
          LogJavascriptError(window.location.pathname, textStatus.toString(), xhr.responseText.toString().replace(/,/g, ""), "updateBlitzTask");
        }
      }
    });

  });

  $("#weeklyReferralsAndTransactions input").keydown(function (e) {
    // Allow: backspace, delete, tab, escape, enter and .
    if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 ||
      // Allow: Ctrl+A, Command+A
        (e.keyCode === 65 && (e.ctrlKey === true || e.metaKey === true)) ||
      // Allow: home, end, left, right, down, up
        (e.keyCode >= 35 && e.keyCode <= 40)) {
      // let it happen, don't do anything
      return;
    }
    // Ensure that it is a number and stop the keypress
    if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
      e.preventDefault();
    }
  });

  $('#referralsThisWeek').change(function () {

    var referralTotal = $(this).val();

    saveThisWeekTotals($(this).val(), 'referrals');

    $.each(eval('actionStepsWeek' + week), function () {
      this.referralsThisWeek = referralTotal;
    });

  });

  $('#transactionsThisWeek').change(function () {

    var transactionsTotal = $(this).val();

    saveThisWeekTotals($(this).val(), 'transactions');

    $.each(eval('actionStepsWeek' + week), function () {
      this.transactionsThisWeek = transactionsTotal;
    });

  });

  getTotals();

  $("#yourProgressMeter").css("height", parseInt(parseInt($('#hdnTotalTasks').val()) / 174 * 100) + "%");
  $("#yourProgressMeterInfo").html($('#hdnTotalTasks').val() + ' / 174 <span>Tasks completed</span>');

  // Adjust CSS of progress bar if progress user completed more than 100 tasks
  if ($('#hdnTotalTasks').val() > 100) {
    $('#yourProgressMeterInfo').addClass('your-progress-light');
  }
});


function saveThisWeekTotals(countTotal, area) {

  $.ajax({
    url: "surge.aspx/updateBlitzTotals",
    data: "{ 'intCountTotal': '" + countTotal + "', 'strTotalType': '" + area + "', 'intWeek': '" + week + "', 'userID': '" + userID + "' }",
    dataType: "json",
    type: "POST",
    contentType: "application/json; charset=utf-8",
    dataFilter: function (data) { return data; },
    success: function (data, status) {
      //UPDATE GRAPH
      getTotals();
    },
    error: function (xhr, textStatus, errorThrown) {
      var respMsg = JSON.parse(xhr.responseText);
      alert("Error in updateBlitzTask:\n" + respMsg.Message);
      if (typeof xhr == 'undefined') {
        LogJavascriptError(window.location.pathname, textStatus.toString(), errorThrown.toString(), "saveThisWeekTotals");
      } else {
        LogJavascriptError(window.location.pathname, textStatus.toString(), xhr.responseText.toString().replace(/,/g, ""), "saveThisWeekTotals");
      }
    }
  });

}


//GET TOTALS FROM THE WEEKS
function getTotals() {

  var referralTotals = 0;
  var transactionTotals = 0;

  //alert($('actionStepsWeek' + 0))

  for (i = 0; i < 7; i++) {
    $.each(eval('actionStepsWeek' + i), function () {
      referralTotals = referralTotals + parseInt(this.referralsThisWeek);
      transactionTotals = transactionTotals + parseInt(this.transactionsThisWeek);
    });
  }

  $('#totalReferralsReceived').html(referralTotals);
  $('#totalTransactionsClosed').html(transactionTotals);

}