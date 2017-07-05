var output = "";
// Buffini TV
$.each(dataBuffiniTV, function() {
  output += '<div class="column">';
  output += '<a href="buffini-tv.aspx?id=' + this.id + "&title=" + this.title + '">';
  output += '<div class="card">';
  output += '<div class="card-image">';
  output += '<img src="../members-area/assets/images/thumbnails/videos/' + this.image + '"' + '>';
  output += '</div>';
  output += '<div class="card-content">';
  output += '<span class="jsTitle card-title">' + this.title + '</span>';
  output += "<span class='jsCategory card-tag'>Buffini TV</span>";
  output += '</div>';
  output += '</div>';
  output += '</a>';
  output += '</div>';
});

$('#videoList').html(output);