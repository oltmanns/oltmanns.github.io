// This script parses data from "assets/data/resources"
// Search and filtration is powered by List.js in "assets/scripts/libraries"

$(document).ready(function() {
  
  // B.I.T. O'Brian
  $.each(dataBOB, function() {
    output += '<a class="column" href="index.html?type=bit-o-brian' + this.id + "&title=" + this.title + '">';
    output += '<div class="card">';
    output += '<div class="card-image card-image-video">';
    output += '<img src="assets/images/thumbnails/videos/' + this.image + '"' + '>';
    output += '</div>';
    output += '<div class="card-content">';
    output += '<span class="jsTitle card-title">' + this.title + '</span>';
    output += "<span class='jsCategory card-tag'>B.I.T. O'Brian</span>";
    output += '</div>';
    output += '</div>';
    output += '</a>';
  });

  // Buffini TV
  $.each(dataBuffiniTV, function() {
    output += '<a class="column" href="http://broadcast.buffiniandcompany.com/BTV/video.aspx">';
    output += '<div class="card">';
    output += '<div class="card-image card-image-video">';
    output += '<img src="assets/images/thumbnails/videos/' + this.image + '"' + '>';
    output += '</div>';
    output += '<div class="card-content">';
    output += '<span class="jsTitle card-title">' + this.title + '</span>';
    output += "<span class='jsCategory card-tag'>Buffini TV</span>";
    output += '</div>';
    output += '</div>';
    output += '</a>';
  });

  // Training Videos
  $.each(dataTrainingVideos, function() {
    output += '<a class="column" href="index.html?type=training-videos' + this.id + "&title=" + this.title + '">';
    output += '<div class="card">';
    output += '<div class="card-image card-image-video">';
    output += '<img src="assets/images/thumbnails/videos/' + this.image + '"' + '>';
    output += '</div>';
    output += '<div class="card-content">';
    output += '<span class="jsTitle card-title">' + this.title + '</span>';
    output += "<span class='jsCategory card-tag'>Training Videos</span>";
    output += '</div>';
    output += '</div>';
    output += '</a>';
  });

  // Webcast Archive
  $.each(dataWebcastArchive, function() {
    output += '<a class="column" href="index.html?type=webcast-archive' + this.id + "&title=" + this.title + '">';
    output += '<div class="card">';
    output += '<div class="card-image card-image-video">';
    output += '<img src="assets/images/thumbnails/videos/' + this.image + '"' + '>';
    output += '</div>';
    output += '<div class="card-content">';
    output += '<span class="jsTitle card-title">' + this.title + '</span>';
    output += "<span class='jsCategory card-tag'>Webcast Archive</span>";
    output += '<span class="jsDate card-tag">' + this.date + '</span>';
    output += '</div>';
    output += '</div>';
    output += '</a>';
  });
  $('#videoList').html(output);

  // Get URL query string variables from URL
  // 'getQueryVariable' function is located in scripts/global/global.js
  var type = getQueryVariable('type');
  var id = getQueryVariable("id");
  var title = getQueryVariable("title");  
  var output = "";

  // if "type" query string variable exists, hide the top-level categories and show results
  if (type) {
    $('#header').addClass('header-small');
    $('#breadcrumbs').fadeIn();
    $('#videoList').fadeIn();
    $('#paginationTop').fadeIn();
    $('#paginationBottom').fadeIn();
    $('#videoCategories').hide();
  }
  // Change select menu value and breadcrumbs based on query string variable
  switch(type) {
    case 'bit-o-brian':
      $('#filter').val("B.I.T. O'Brian").change();
      $('#breadcrumbVideoCategory').html("<a href='index.html?type=bit-o-brian'>B.I.T. O'Brian</a>");
      break;
    case 'buffini-tv':
      $('#filter').val("Buffini TV").change();
      $('#breadcrumbVideoCategory').html('<a href="index.html?type=buffini-tv">Buffini TV</a>');
      break;
    case 'training-videos':
      $('#filter').val('Training Videos').change();
      $('#breadcrumbVideoCategory').html('<a href="index.html?type=training-videos">Training Videos</a>');
      break;
    case 'webcast-archive':
      $('#filter').val('Webcast Archive').change();
      $('#breadcrumbVideoCategory').html('<a href="index.html?type=webcast-archive">Webcast Archive</a>');
      break;
  }  
  
  
  
  // if "id" query string variable is present, show videoPlayer with new src from Brightcove 
  if(id) {
    $("#videoPlayer").fadeIn(); 
  }
  // If "title" query string variable is present, add a video title to the top of the page
  if(title) {
    var titleWithSpaces = title.replace(/\+/g, " ").replace(/\%27/g, "'");
    $("#videoTitle").show().html(titleWithSpaces);
  }
  // Replace special characters on video thumbnail URL query strings
  $("#videoList a").each( function() {
     this.href = this.href.replace(/\%20/g, "+");
  });
  // Scroll to top of results when pagination is clicked
  $(".pagination-bottom").bind("click", function() {
    $('html, body').animate({
        scrollTop: $("#videoContainer").offset().top
    }, 700);
  });
  
  // Search Input - Prevent page refresh when hitting "return" or "enter"
  $('#search').keypress(function(e) {
    if (e.which == 13) {
      e.preventDefault();
      $(this).blur();
    }
    $('#videoCategories').hide();
    $('#videoList').fadeIn();
  });

  // Search Input - Show message if no results are found. Show categories if input is blank.
  $('#search').on('change', function(e) {
    var inputValue = $(this).val();
    if ((inputValue.length >= 1) && ($('#videoList > a').length === 0)) {
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
    page: 18,
    plugins: [
      ListFuzzySearch(), 
      ListPagination(paginationTopOptions),
      ListPagination(paginationBottomOptions)
    ]
  };
  var videoContainer = new List('videoContainer', options);
  // Filter
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
    if (selection === "") {
      $('#breadcrumbVideoCategory').html(" ");
      $('#paginationTop').hide();
      $('#paginationBottom').hide();
    } else if (selection != "") {
      $('#paginationTop').show();
      $('#paginationBottom').show();
    }
    if (selection === "B.I.T. O'Brian") {
      $('#breadcrumbVideoCategory').html("<a href='index.html?type=bit-o-brian'>B.I.T. O'Brian</a>");
    }
    if (selection === "Buffini TV") {
      $('#breadcrumbVideoCategory').html("<a href='index.html?type=buffini-tv'>Buffini TV</a>");
      $('#paginationTop').hide();
      $('#paginationBottom').hide();
    }
    if (selection === "Training Videos") {
      $('#breadcrumbVideoCategory').html("<a href='index.html?type=training-videos'>Training Videos</a>");
    }
    if (selection === "Webcast Archive") {
      $('#breadcrumbVideoCategory').html("<a href='index.html?type=webcast-archive'>Webcast Archive</a>");
    }
    
  }).change();

});
  