<%@ Page Title="Marketing Materials" Language="vb" AutoEventWireup="false" MasterPageFile="~/members-area/global.Master" CodeBehind="marketing.aspx.vb" Inherits="ProvidenceSystems.marketing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
			

<!-- Header -->
<div class="header header-marketing">
  <div class="row mb30">
		<div class="columns small-11 medium-9 small-centered large-centered">
      <div class="row">
        <div class="columns small-12 vertical-center">
          <h1>Marketing Materials</h1>
        </div>
      </div>
		</div>
	</div>
</div>


<!-- Main Content -->
<div class="row mt80 mb80">
	<div class="columns small-9 small-centered large-centered">
    
    <!-- Headline -->
    <div class="row mb30">
			<div class="columns">
				<hr>
					<h4>Preview the latest marketing materials</h4>
				<hr>
			</div>
		</div>
		
		<!-- This section is populated by the JS Data below-->
    <div id="marketingMaterials"></div>
		<div class="callout secondary mb80">
      <h6 class="subheader">New to Buffini &amp; Company Membership? You will receive a Starter Kit with this <a href="assets/documents/marketing/wells-fargo/letters/letter-starter-kit.pdf" target="_blank">cover&nbsp;letter</a> and <a href="assets/documents/marketing/wells-fargo/flyers/flyer-starter-kit.pdf" target="_blank">marketing&nbsp;flyer</a> instead of the materials shown above.</h6>
		</div>

    <!-- CRM How-To -->
		<div class="row mb30">
			<div class="columns medium-12">
				<hr>
					<h4>How to access e-mails and letters with the Wells Fargo CRM:</h4>
				<hr>
				<p class="mt50"><strong>Step 1:</strong> <a href="http://teamsites.teamworks.wellsfargo.net/sites/clg-hlncl-003/CRMD/training/SitePages/Wiki%20Home.aspx">Click here</a></p>
				<p><strong>Step 2:</strong> Click &quot;CRM Training Guide&quot; for step-by-step instructions.</p>
				<p><strong>Step 3:</strong> Get started with &quot;E-Learning Modules&quot;</p>
		    <div class="callout secondary mt40">
				  <p class="subheader"><strong>Questions?</strong> Contact Sara Anderson via 1-515-398-7907 or <a href="mailto:Sara.R.Anderson@wellsfargo.com" class="subheader">Sara.R.Anderson@wellsfargo.com</a></p>
		    </div>
			</div>
		</div>		    
	</div>
</div>

<!-- Modal for enlarged thumbnail -->
<div class="reveal" id="modal" data-reveal data-animation-in="fade-in" data-animation-out="fade-out">
  <img src="" class="float-center mt60 mb60 thumbnail" />
  <button class="close-button" data-close aria-label="Close modal" type="button">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
			
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
  <script src="assets/data/marketing/data-marketing-wells-fargo.js?v=2.2"></script>
  <script src="assets/scripts/marketing.js?v=2.1"></script>
</asp:Content>