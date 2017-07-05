// Generate HTML from data
// Toggle content based on date

var today = new Date();
var output = '<div class="row small-up-1 medium-up-3 large-up-3">';

$.each(data, function() {
  var showDate = new Date(this.showDate);
  var hideDate = new Date(this.hideDate);
  if (today > showDate && today < hideDate) {
    // Cover Letter
    output += '<div class="column mb50">';
    output += '<img src="assets/images/thumbnails/marketing/wells-fargo/letters/' + this.letter + '"' + 'class="thumbnail"' + ' onerror=' + "this.onerror=null;this.src='assets/images/thumbnails/marketing/wells-fargo/coming-soon.jpg';" + '>';
    output += '<h5>Cover Letter</h5>';
    output += '</div>';
    // Flyer
    output += '<div class="column mb50">';
    output += '<img src="assets/images/thumbnails/marketing/wells-fargo/flyers/' + this.flyer + '"' + 'class="thumbnail"' + ' onerror=' + "this.onerror=null;this.src='assets/images/thumbnails/marketing/wells-fargo/coming-soon.jpg';" + '>';
    output += '<h5>Marketing Flyer</h5>';
    output += '</div>';
    // eReport
    output += '<div class="column mb50">';
    output += '<img src="assets/images/thumbnails/marketing/wells-fargo/ereports/' + this.ereport + '"' + 'class="thumbnail"' + ' onerror=' + "this.onerror=null;this.src='assets/images/thumbnails/marketing/wells-fargo/coming-soon.jpg';" + '>';
    output += '<h5>eReport (email template)</h5>';
    output += '</div>';
  }
});
output += '</div>';
$('#marketingMaterials').html(output);


// Enlarge thumbnail when clicked
$('#marketingMaterials img').on('click', function() {
  var clickedImage = $(this).attr('src');
  $('#modal').foundation('open');
  $('#modal img').attr('src', clickedImage);
}); 

