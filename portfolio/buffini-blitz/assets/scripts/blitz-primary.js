// Get Query String variables from URL (these functions are located in global.js)
$(document).ready(function() {

  // Scroll to top of page when Blitz logo is clicked
  $('#blitzLogo').click(function() {
    $('html, body').animate({
        scrollTop: 0
    }, 1000);
  });
  
  // Populate modal source based in link clicked in sidebar
  // Video
  $('#resourcesVideo a').on('click', function() {
    var id = $(this).attr('id');
    var title = $(this).text();
    $('#modalVideo iframe').attr('src', 'https://players.brightcove.net/775290559001/b7585712-dc7a-48d2-8716-b44e6d98d4e2_default/index.html?videoId='+id);
    $('#modalVideoTitle').html(title);
  });
  // Audio
  $('#resourcesAudio a').on('click', function() {
    var id = $(this).attr('id');
    var title = $(this).text();
    $('#modalAudioPlayer').html();
    $('#modalAudioPlayer').html('<audio controls style="width:100%;"><source src="../audio/blitz/launch/'+id+'.mp3" type="audio/mpeg"></audio>');
    $('#modalAudioTitle').html(title);
  });

  // Obscure the day container when all tasks have been completed in that day
  var obscureDayOnCompletion = function(Day, Task) {
    // Checkbox inputs
    $('input[name="' + Day + '_' + Task + '"][type="checkbox"]').on('change click', function () {
      if ($('input[name="' + Day + '_' + Task + '"][type="checkbox"]:checked').length == $('input[name="' + Day + '_' + Task + '"][type="checkbox"]').length) {
          $('input[name="' + Day + '_' + Task + '"][type="checkbox"]').parent().addClass('is-complete');
        } else {
          $('input[name="' + Day + '_' + Task + '"][type="checkbox"]').parent().removeClass('is-complete');
        }
    }).change();
    // Radio Inputs
    $('input[name="' + Day + '_' + Task + '"][type="radio"]').on('change click', function () {
      if ($('input[name="' + Day + '_' + Task + '"][type="radio"]:first-child').is(':checked')) {
        $('input[name="' + Day + '_' + Task + '"][type="radio"]').parent().addClass('is-complete');
      } else {
        $('input[name="' + Day + '_' + Task + '"][type="radio"]').parent().removeClass('is-complete');
      }  
    }).change();
    // All Inputs
    $('input[name="' + Day + '_' + Task + '"]').on('change click', function () {
      if ($('#'+Day).find('.blitz-action-task-inputs.is-complete').length == $('#'+Day).find('.blitz-action-task-inputs').length) {
        $('#'+Day).addClass('is-complete');
        $('#'+Day).addClass('just-completed');
        setTimeout(function () { 
            $('#'+Day).removeClass('just-completed');
        }, 3000);
      } else {
        $('#'+Day).removeClass('is-complete');
        $('#'+Day).removeClass('just-completed');
      }
    }).change();
  };
  obscureDayOnCompletion('Day1', 'Task1');
  obscureDayOnCompletion('Day2', 'Task1');
  obscureDayOnCompletion('Day3', 'Task1');
  obscureDayOnCompletion('Day4', 'Task1');
  obscureDayOnCompletion('Day5', 'Task1');

  obscureDayOnCompletion('Day1', 'Task2');
  obscureDayOnCompletion('Day2', 'Task2');
  obscureDayOnCompletion('Day3', 'Task2');
  obscureDayOnCompletion('Day4', 'Task2');
  obscureDayOnCompletion('Day5', 'Task2');

  obscureDayOnCompletion('Day1', 'Task3');
  obscureDayOnCompletion('Day2', 'Task3');
  obscureDayOnCompletion('Day3', 'Task3');
  obscureDayOnCompletion('Day4', 'Task3');
  obscureDayOnCompletion('Day5', 'Task3');

  obscureDayOnCompletion('Day1', 'Task4');
  obscureDayOnCompletion('Day2', 'Task4');
  obscureDayOnCompletion('Day3', 'Task4');
  obscureDayOnCompletion('Day4', 'Task4');
  obscureDayOnCompletion('Day5', 'Task4');

  // Referral/Transaction Inputs
  $('#referralsThisWeek, #transactionsThisWeek').on('change', function() {
    // Toggle 'is-complete' class if field contains value
    if ($('#referralsThisWeek').val().length > 0) { 
      $('#referralsThisWeek').addClass('is-complete');
    } else {
      $('#referralsThisWeek').removeClass('is-complete');
    }
    if ($('#transactionsThisWeek').val().length > 0) { 
      $('#transactionsThisWeek').addClass('is-complete');
    } else {
      $('#transactionsThisWeek').removeClass('is-complete');
    }
    // If all referral/transaction inputs contain a value, add 'is-complete' task to referral/transaction section
    if ($('#referralsThisWeek').val().length > 0 && $('#transactionsThisWeek').val().length > 0) { 
      $('#weeklyReferralsAndTransactions').addClass('is-complete');
    } else {
      $('#weeklyReferralsAndTransactions').removeClass('is-complete');
    }
  });

  // Show "congrats" message when everything is checked off
  $('input').on('change', function() {
    if ($(".blitz-action-block.is-complete").length == $(".blitz-action-block").length) {
      $('#modalWeekFinished').foundation('open');
    }
  });

  // Change order of columns for small/medium screens on page load/resize
  var resizeTimer;
  $(window).on('load resize', function(e) {
    clearTimeout(resizeTimer);
    resizeTimer = setTimeout(function() {
      if (Foundation.MediaQuery.atLeast('large') == false) {
        $("#weeklyResourcesSection").insertAfter("#blitzSecondary");
        $("#questions").insertAfter("#weeklyResourcesSection");
      } else {
        $("#weeklyResourcesSection").insertAfter("#weeklyActionStepsSection");
        $("#questions").insertAfter("#weeklyResourcesSection");
      }
    }, 250);
  });  
    
});