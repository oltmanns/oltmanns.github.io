$( document ).ready(function() {
  // Get URL query string variables
  var id = getQueryVariable("id");
  var title = getQueryVariable("title");
  if(id) {
    $("#videoPlayer").fadeIn(); 
    $("#videoPlayer iframe").attr("src", "//players.brightcove.net/775290559001/6c91c761-d62d-4ca0-9ab6-8faa1f43b89c_default/index.html?videoId=" + id);
    $('html, body').animate({
      scrollTop: $("#videoContainer").offset().top -60
    }, 300);
  }
  if(title) {
    var titleWithoutSpaces = title.replace(/\+/g, " ");
    $("#videoTitle").show().html(titleWithoutSpaces);
  }
});


$(function() {

  // Prevent search input from refreshing page on keydown
  $('#search').keydown(function(e) {
    if (e.which === 13) {
      e.preventDefault();
    }
    $('#videoCategories').hide();
    $('#videoList').fadeIn();
  });

  // Show message if there are no search results
  $('#search').on('blur', function() {
    var inputValue = $(this).val();
    if ($('#videoList > div').length === 0) {
      $('#videoList').html('<h5>There are no results for <strong>"' + inputValue + '"</strong>. <a href="javascript:window.location.reload();">Refresh this page</a>.</h5>');
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
  
  // Configuration for "assets/scripts/libraries/list.pagination.min.js"  
  var paginationTopOptions = {
    name: "paginationTop",
    paginationClass: "pagination-top",
    innerWindow:10
  };
  var paginationBottomOptions = {
    name: "paginationBottom",
    paginationClass: "pagination-bottom",
    innerWindow:10
  };

  // Configuration for "assets/scripts/libraries/list.min.js"  
  // Search
  var options = {
    valueNames: ['jsTitle', 'jsCategory', 'jsDate'],
    page: 15,
    plugins: [
      ListFuzzySearch(), 
      ListPagination(paginationTopOptions),
      ListPagination(paginationBottomOptions)
    ]
  };
  var videoContainer = new List('videoContainer', options);
  // Filter
  $('#filter').prop('selectedIndex',0);
  $('#filter').change(function() {
    $('#videoCategories').hide();
    $('#videoList').fadeIn();
    var selection = this.value;
    if (selection) {
      videoContainer.filter(function(item) {
        return (item.values().jsCategory === selection);
      });
    } else {
      videoContainer.filter();
      $('#videoCategories').fadeIn();
      $('#videoList').hide();
    }
  }).change();

});

// Replace special characters on video thumbnail URL query strings
$("#videoList a").each( function() {
   this.href = this.href.replace(/%20/g, "+").replace(/%27/g, "+");
});

$( document ).ready(function() {
  $(".pagination-bottom").bind("click", function() {
    $('html, body').animate({
        scrollTop: $("#videoContainer").offset().top
    }, 700);
  });
});

