// Generate HTML from assets/data/resources.js
var output = "";
// Dialogs
$.each(dataPopByTags, function() {
  if (this.type == 'Clients') {
    output += '<a data-open="modal" class="column ga-track" href="../members-area/assets/documents/pop-by-tags/' + this.link + '" target="_blank">';
  } else {
    output += '<a class="column ga-track" href="../members-area/assets/documents/pop-by-tags/' + this.link + '" target="_blank">';
  }
  
  output += '<div class="card">';
  output += '<div class="card-image">';
  output += '<img src="../members-area/assets/images/thumbnails/pop-by-tags/' + this.image + '"' + '>';
  output += '</div>';
  if (this.type == 'Clients') {
    output += '<div class="card-content">';
      output += '<span class="card-subtitle jsTags">Gift idea: ' + this.tags + '</span>';
    output += '</div>';
  }
  output += '<span class="hide jsType">' + this.type + '</span>';
  output += '<span class="hide jsTags">' + this.tags + ' ' + this.link + '</span>';
  output += '</div>';
  output += '</a>';
});
$('#resourceList').html(output);


// Prevent search input from refreshing page on keydown
$('#search').keydown(function(e) {
  if (e.which == 13) {
    e.preventDefault();
  }
});

// Show message if there are no search results
$('#search').on('change', function (e) {
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
// Search
var options = {
  valueNames: ['jsType', 'jsGift', 'jsTags'],
  plugins: [ListFuzzySearch()]
};
var resourceContainer = new List('resourceContainer', options);

// Filter by Overall Type
$('#filterType').change(function() {
  var selection = this.value;
  if (selection) {
    resourceContainer.filter(function(item) {
      return item.values().jsType.indexOf(selection) > -1;
    });
  } else {
    resourceContainer.filter();
  }
});

// Filter by Tags
$('#filterTags').change(function() {
  var selection = this.value;
  if (selection) {
    resourceContainer.filter(function (item) {
      return item.values().jsTags.indexOf(selection) > -1;
    });
  } else {
    resourceContainer.filter();
  }
});


$('[data-open]').on('click', function (e) {
  e.preventDefault();
  var popByLink = $(this).attr('href');
  $('#modalButton').attr('href', popByLink);
});


