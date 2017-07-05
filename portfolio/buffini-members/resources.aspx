<%@ Page Title="Resource Library" Language="vb" AutoEventWireup="false" MasterPageFile="~/members-area/global.Master" CodeBehind="resources.aspx.vb" Inherits="ProvidenceSystems.resources" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">

<!-- Header -->
<div id="header" class="header header-resources">
  <div class="row mb30">
		<div class="columns medium-10 small-centered large-centered">
      <div class="row">
        <div class="columns medium-12 vertical-center">
          <a href="resources.aspx"><h1>Resource Library</h1></a>
        </div>
      </div>
		</div>
	</div>
</div>


<!-- Main Content -->
<section class="row mt80 mb80">
	<div class="columns medium-10 small-centered large-centered">

    <!-- Resource Container -->
  	<div id="resourceContainer">

      <!-- Search / Filter -->
      <div id="resourceFinder" class="row pb40">
        <div id="filterContainer" class="columns medium-4">
          <label>Filter by:
          <select id="filter" name="jsCategory">
            <option selected="selected" value="">All Categories</option>
            <option value="Dialogues">Dialogues</option>
            <option value="Letters">Letters</option>
            <option value="Lists">Lists</option>
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
		  <div id="resourceCategories" class="row small-up-1 medium-up-2 large-up-2" data-equalizer data-equalize-by-row="true" style="display:none;">
			  <div class="column">
			    <a href="pop-by-tags.aspx">
			      <div class="card">
				      <div class="card-category-image">
				        <img src="assets/images/icons/pop-by-white.png" alt="">
				      </div>
				      <div class="card-content">
				        <span class="card-title">Pop-By Tags</span>
				      </div>
			      </div>
			    </a>
			  </div>
			  <div class="column">
			    <a href="?type=dialogues">
			      <div class="card">
				      <div class="card-category-image">
				        <img src="assets/images/icons/dialogues-white.png" alt="">
				      </div>
				      <div class="card-content">
				        <span class="card-title">Dialogues</span>
				      </div>
			      </div>
			    </a>
			  </div>
			  <div class="column">
			    <a href="?type=letters">
			      <div class="card">
				      <div class="card-category-image">
				        <img src="assets/images/icons/letters-white.png" alt="">
				      </div>
				      <div class="card-content">
				        <span class="card-title">Letters</span>
				      </div>
			      </div>
			    </a>
			  </div>
			  <div class="column">
			    <a href="?type=lists">
			      <div class="card">
				      <div class="card-category-image">
				        <img src="assets/images/icons/lists-white.png" alt="">
				      </div>
				      <div class="card-content">
				        <span class="card-title">Lists</span>
				      </div>
			      </div>
			    </a>
			  </div>
		  </div>

      <!-- Resource List -->
      <!-- This section is populated with the javaScript below -->
		  <div id="resourceList" class="list row small-up-2 medium-up-2 large-up-3" data-equalizer data-equalize-by-row="true" style="display:none;">
		  </div>
  	</div>
	</div>
</section>
		
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
  <!-- Data -->
  <script src="assets/data/resources/data-dialogues.js?v=1.1"></script>
  <script src="assets/data/resources/data-letters.js?v=1.1"></script>
  <script src="assets/data/resources/data-lists.js?v=1.1"></script>
  <!-- Data Rendering -->
  <script src="assets/scripts/resources.js?v=1.4"></script>  
<script>


</script>
</asp:Content>