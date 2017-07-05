<%@ Page Title="Video Library" Language="vb" AutoEventWireup="false" MasterPageFile="~/members-area/global.Master" CodeBehind="Videos.aspx.vb" Inherits="ProvidenceSystems.Videos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">

<!-- Header -->
<div id="header" class="header header-videos">
  <div class="row mb30">
		<div class="columns medium-10 small-centered large-centered">
      <div class="row">
        <div class="columns medium-12 vertical-center">
          <a href="videos.aspx"><h1>Video Library</h1></a>
        </div>
      </div>
		</div>
	</div>
</div>


<!-- Breadcrumbs -->
<nav id="breadcrumbs" class="breadcrumbs-container" style="display:none;">
  <div class="row">
    <div class="columns medium-10 small-centered large-centered">
      <ul class="breadcrumbs">
        <li><a href="videos.aspx">Video Library</a></li>
        <li id="breadcrumbVideoCategory"></li>
      </ul>
    </div>
  </div>
</nav>


<!-- Main Content -->
<section class="row mt80 mb80">
	<div class="columns medium-10 small-centered large-centered">

    <!-- Resource Container -->
  	<div id="videoContainer">

      <!-- Video Player -->
      <h3 id="videoTitle"></h3>
      <div id="videoPlayer" class="flex-video widescreen mt20 mb80" style="display: none;"> 
        <iframe src="" allowfullscreen webkitallowfullscreen mozallowfullscreen frameBorder="0"></iframe>
      </div>

      <!-- Search / Filter -->
      <div id="videoFinder" class="row pb40">
        <div id="filterContainer" class="columns medium-4">
          <label>Filter by:
          <select id="filter" name="jsCategory">
            <option selected="selected" value="">All Categories</option>
            <option value="B.I.T. O'Brian">B.I.T. O'Brian</option>
            <option value="Buffini TV">Buffini TV</option>
            <option value="Training Videos">Training Videos</option>
            <option value="Webcast Archive">Webcast Archive</option>
          </select>
          </label>
        </div>
        <div class="columns medium-8">
          <label>Search for:
          <input id="search" class="search fuzzy-search" type="text" placeholder="search" autocomplete="off">
          </label>
        </div>
      </div>

      <!-- Top-Level Categories -->
	    <div id="videoCategories" class="row small-up-1 medium-up-2 large-up-2" data-equalizer data-equalize-by-row="true" style="display:none;">
		    <div class="column">
		      <a href="?type=bit-o-brian">
	          <div class="card">
		          <div class="card-category-image">
		            <img src="assets/images/logos/bit-o-brian-white.png" alt="">
		          </div>
		          <div class="card-content">
		            <span class="card-title">B.I.T. O'Brian</span>
		          </div>
	          </div>
	        </a>    
		    </div>
		    <div class="column">
	        <a href="http://broadcast.buffiniandcompany.com/BTV/video.aspx" target="_blank">
	          <div class="card">
		          <div class="card-category-image">
		            <img src="assets/images/logos/buffini-tv-white.png" alt="">
		          </div>
		          <div class="card-content">
		            <span class="card-title">Buffini TV</span>
		          </div>
	          </div>
	        </a>    
		    </div>
		    <div class="column">
		      <a href="?type=training-videos">
	          <div class="card">
		          <div class="card-category-image">
		            <img src="assets/images/logos/training-videos-white.png" alt="">
		          </div>
		          <div class="card-content">
		            <span class="card-title">Training Videos</span>
		          </div>
	          </div>
	        </a>    
		    </div>
		    <div class="column">
	        <a href="?type=webcast-archive">
	          <div class="card">
		          <div class="card-category-image">
		            <img src="assets/images/logos/webcast-archive-white.png" alt="">
		          </div>
		          <div class="card-content">
		            <span class="card-title">Webcast Archive</span>
		          </div>
	          </div>
	        </a>
		    </div>
	    </div>

      <!-- Video List -->
      <!-- This section is populated with the javaScript below -->
		  <ul id="paginationTop" class="pagination pagination-top" style="display:none;"></ul>
		  <div id="videoList" class="list row small-up-2 medium-up-2 large-up-3" data-equalizer data-equalize-by-row="true">
		  </div>
		  <ul id="paginationBottom" class="pagination pagination-bottom" style="display:none;"></ul>
		    
		    
    </div>
  </div>
</section>
		
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
  <!-- Data -->
  <script src="assets/data/videos/data-bit-o-brian.js?v=1.1"></script>
  <script src="assets/data/videos/data-buffini-tv.js?v=1.1"></script>
  <script src="assets/data/videos/data-training-videos.js?v=1.3"></script>
  <script src="assets/data/videos/data-webcast-archive.js?v=1.1"></script>
  <!-- Data Rendering -->
  <script src="assets/scripts/videos.js?v=1.6"></script>
</asp:Content>