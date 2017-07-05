<%@ Page Title="Pop-By Tags" Language="vb" AutoEventWireup="false" MasterPageFile="~/members-area/global.Master" CodeBehind="pop-by-tags.aspx.vb" Inherits="ProvidenceSystems.pop_by_tags" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">

<!-- Header -->
<div id="header" class="header header-pop-by">
  <div class="row mb30">
		<div class="columns medium-10 small-centered large-centered">
      <div class="row">
        <div class="columns medium-12 vertical-center">
          <h1>Pop-By Tags</h1>
          <p class="hide-for-small-only medium-6 large-5">Choose a Pop-By tag to go with the gift you've selected for your clients. These tags are ready for downloading &amp; printing!
    Tags are compatible with Avery 5164 labels.</p>
        </div>
      </div>
		</div>
	</div>
</div>


<!-- Breadcrumbs -->
<nav id="breadcrumbs" class="breadcrumbs-container">
  <div class="row">
    <div class="columns medium-10 small-centered large-centered">
      <ul class="breadcrumbs">
        <li><a href="resources.aspx">Resource Library</a></li>
        <li><a href="pop-by-tags.aspx">Pop-By Tags</a></li>
      </ul>
    </div>
  </div>
</nav>


<!-- Main Content -->
<section class="row mt80 mb80">
	<div class="columns medium-10 small-centered large-centered">

    <!-- Message for Wells Fargo -->
  	<div id="messageWellsFargo">
  	  <p><strong>Pop-Bys are a great way to reach out to both consumers and clients!</strong></p>
  	  <p>The Wells Fargo branded Pop-By tags are ready to use with clients. Please follow the guidelines in the Sales Practices Guide on the Sales Central Portal. To order Wells Fargo branded items call 1-800-358-3881 or email <a href="mailto:wellsfargo@groupii.com">wellsfargo@groupii.com</a>.</p>
  	  <p>The Pop-By tags with no Wells Fargo logo are for use with consumers. To use the consumer Pop-by tags with clients, please follow the guidelines in the Sales Practices Guide on the Sales Central Portal.</p>
  	</div>

    <!-- Resource Container -->
  	<div id="resourceContainer" style="min-height:600px;">

      <!-- Search / Filter -->
      <div id="resourceFilter" class="row pt20 pb20">
        <div class="columns medium-3">
          <select id="filterType" name="filterType">
            <option selected="selected" value="">Filter by Type</option>
            <option value="Clients">Clients</option>
            <option value="Consumers">Consumers</option>
          </select> 
        </div>
        <div class="columns medium-3">
          <select id="filterTags" name="filterTags">
            <option selected="selected" value="">Filter by Gift Idea</option>
            <option value="accessories">Accessories</option>
            <option value="auto">Auto</option>
            <option value="health">Health</option>
            <option value="holiday">Holiday</option>
            <option value="home">Home Goods</option>
            <option value="kitchen">Kitchen</option>
            <option value="office">Office</option>
            <option value="outdoor">Outdoor</option>
            <option value="seasonal">Seasonal</option>
            <option value="sports">Sports &amp; Fitness</option>
            <option value="tools">Tools</option>
          </select> 
        </div>
        <div class="columns medium-6">
          <input id="search" class="search fuzzy-search" type="text" placeholder="search">
        </div>
      </div>

      <!-- Resource List -->
      <!-- This section is populated with the javaScript below -->
		  <div id="resourceList" class="list row small-up-2 medium-up-2 large-up-3" data-equalizer>
		  </div>
  	</div>
  	
	</div>
</section>

<!-- Modal for special WF pop-by tags -->
<div class="reveal p40" id="modal" data-reveal data-animation-in="slide-in-down" data-animation-out="fade-out">
  <p><strong>Pop-Bys are a great way to reach out to both consumers and clients!</strong></p>
  <p>Before doing Pop-Bys with clients, follow the guidelines in the Sales Practices Guide on the Sales Central Portal. To order Wells Fargo branded items call <span style="white-space: nowrap;">1-800-358-3881</span> or email <a href="mailto:wellsfargo@groupii.com">wellsfargo@groupii.com</a>.</p>
  <a id="modalButton" href="" class="button" target="_blank">Go to Pop-By Tag</a>
  <button class="close-button" data-close aria-label="Close modal" type="button">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
		
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
  <!-- Data -->
  <script src="assets/data/pop-by-tags/wells-fargo.js?v=<%= DateTime.Now.ToString("yyyy-MM-dd-HH") %>"></script>
  <!-- Data Rendering -->
  <script src="assets/scripts/pop-by-tags.js?v=<%= DateTime.Now.ToString("yyyy-MM-dd-HH") %>"></script>  

  <script>
    $(document).ready(function() {
      Foundation.reInit('equalizer'); 
    });
  </script>
</asp:Content>