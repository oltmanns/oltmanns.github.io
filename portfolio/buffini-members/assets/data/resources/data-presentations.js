var dataPresentations = [
  {
    "link": "#",
    "image": "http://placehold.it/800x450",
    "title": "Presentation"
  }
];

var output = "";
$.each(dataPresentations, function() {
  output += '<div class="column">';
  output += '<a href="../members-area/assets/documents/resources/presentations/' + this.link + '">';
  output += '<div class="card">';
  output += '<div class="card-image">';
  output += '<img src="../members-area/assets/images/thumbnails/resources/presentations/' + this.image + '"' + '>';
  output += '</div>';
  output += '<div class="card-content">';
  output += '<span class="jsTitle card-title">' + this.title + '</span>';
  output += '<span class="jsCategory card-tag">Presentations</span>';
  output += '</div>';
  output += '</div>';
  output += '</a>';
  output += '</div>';
});