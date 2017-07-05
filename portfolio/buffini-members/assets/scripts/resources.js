// This script parses data from "assets/data/resources"
// Search and filtration is powered by List.js in "assets/scripts/libraries"

$(function() {
  
  var output = "";
  // Dialogues
  $.each(dataDialogues, function() {
    output += '<a class="column ga-track" href="assets/documents/resources/dialogues/' + this.link + '" target="_blank">';
    output += '<div class="card">';
    output += '<div class="card-image">';
    output += '<img src="assets/images/thumbnails/resources/dialogues/' + this.image + '"' + '>';
    output += '</div>';
    output += '<div class="card-content">';
    output += '<span class="jsTitle card-title">' + this.title + '</span>';
    output += '<span class="jsCategory card-tag">Dialogues</span>';
    output += '</div>';
    output += '</div>';
    output += '</a>';
  });
  // Letters
  $.each(dataLetters, function() {
    output += '<a class="column ga-track" href="assets/documents/resources/letters/' + this.link + '" target="_blank">';
    output += '<div class="card">';
    output += '<div class="card-image">';
    output += '<img src="assets/images/thumbnails/resources/letters/' + this.image + '"' + '>';
    output += '</div>';
    output += '<div class="card-content">';
    output += '<span class="jsTitle card-title">' + this.title + '</span>';
    output += '<span class="jsCategory card-tag">Letters</span>';
    output += '</div>';
    output += '</div>';
    output += '</a>';
  });
  // Lists
  $.each(dataLists, function() {
    output += '<a class="column ga-track" href="assets/documents/resources/lists/' + this.link + '" target="_blank">';
    output += '<div class="card">';
    output += '<div class="card-image">';
    output += '<img src="assets/images/thumbnails/resources/lists/' + this.image + '"' + '>';
    output += '</div>';
    output += '<div class="card-content">';
    output += '<span class="jsTitle card-title">' + this.title + '</span>';
    output += '<span class="jsCategory card-tag">Lists</span>';
    output += '</div>';
    output += '</div>';
    output += '</a>';
  });
  $('#resourceList').append(output);
  
  // Get URL query string variable from URL
  // 'getQueryVariable' function is located in scripts/global/global.js
  var type = getQueryVariable('type');

  // if type variable exists, hide the top-level category images
  if (type) {
    $('#header').addClass('header-small');
    $('#resourceCategories').hide();
  }
  
  // Change select menu value based on query string
  switch(type) {
    case 'dialogues':
      $('#filter').val('Dialogues').change();
      break;
    case 'letters':
      $('#filter').val('Letters').change();
      break;
    case 'lists':
      $('#filter').val('Lists').change();
      break;
  }

  // Search Input - Prevent page refresh when hitting "return" or "enter"
  $('#search').keypress(function(e) {
    if (e.which == 13) {
      e.preventDefault();
      $(this).blur();
    }
    $('#resourceCategories').hide();
    $('#resourceList').fadeIn();
  });

  // Search Input - Show message if no results are found. Show categories if input is blank.
  $('#search').on('change', function(e) {
    var inputValue = $(this).val();
    if ((inputValue.length >= 1) && ($('#resourceList > a').length === 0)) {
      $('#resourceList').html('<h5>There are no results for <strong>"' + inputValue + '"</strong>. <a href="javascript:window.location.reload();">Refresh this page</a>.</h5>');
    }
  });
  
  // Configuration for "assets/scripts/libraries/list.fuzzysearch.min.js"
  var fuzzyOptions = {
  searchClass: "fuzzy-search",
  location: 0,
  distance: 100,
  threshold: 0.4,
    multiSearch: true
  };
  
  // Configuration for "assets/scripts/libraries/list.min.js"  
  var options = {
    valueNames: ['jsTitle', 'jsCategory'],
    plugins: [ListFuzzySearch()]
  };
  var resourceContainer = new List('resourceContainer', options);

  // Filter
  $('#filter').change(function() {
    $('#resourceCategories').hide();
    $('#resourceList').fadeIn();
    var selection = this.value;
    if (selection) {
      resourceContainer.filter(function(item) {
        return (item.values().jsCategory === selection);
      });
    } else {
      resourceContainer.filter();
      $('#resourceCategories').fadeIn();
      $('#resourceList').hide();
    }
  }).change();

});






