<%@ Page Title="Members Home" Language="vb" AutoEventWireup="false" MasterPageFile="~/members-area/global.master" CodeBehind="default.aspx.vb" Inherits="ProvidenceSystems._default5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">

<!-- Header -->
<section class="header header-home">
  <div class="header-home-partner show-for-large">
    <asp:Label ID="lblCorporateInfo" runat="server"></asp:Label>
  </div>
  
  
  <div class="row mb30">
		<div class="columns medium-9 small-centered large-centered">
      <div class="row">
        <div class="columns small-12 vertical-center">
          <h1>Welcome to the<br />
          Buffini &amp; Company<br />
          Members Area</h1>
          <img src="assets/images/logos/live-the-good-life.png" width="200" />
        </div>
      </div>
		</div>
	</div>

  
</section>


<!-- Main Content -->
<div class="row pt80 pb80">
  <div class="columns medium-9 small-centered large-centered">

    <!-- Welcome -->
    <h4 class="pb20">Welcome to the Buffini &amp; Company Members Area. Here you'll have access to tools and training resources to help you grow your business. Get ready to live the good life!</h4>
    
    <!-- Video -->
    <div style="display: block; position: relative; max-width: 100%;">
      <div style="padding-top: 56.25%;">
        <iframe src="//players.brightcove.net/775290559001/b7585712-dc7a-48d2-8716-b44e6d98d4e2_default/index.html?videoId=5023019940001" allowfullscreen webkitallowfullscreen mozallowfullscreen frameBorder="0" style="width: 100%; height: 100%; position: absolute; top: 0px; bottom: 0px; right: 0px; left: 0px;"></iframe>
      </div>
    </div>
   
    <hr />
    
    <!-- Business Analysis -->
    <div id="get-started" class="row pt20">
      <div class="columns medium-12">
        <h5>Get started by completing your Business Analysis</h5>
      </div>
    </div>
    <div class="row pb20">
      <div class="columns medium-12">
        <p>We are excited to serve and support you in implementing our Working by Referral systems in your business. Your success is very important to us. This Business Analysis is designed to provide your Business Coach with insight into your existing&nbsp;business.</p>
        <a href="http://ba.buffiniandcompany.com" class="button cobalt" target="_blank" id="hlBALink" runat="server">Go to Business Analysis</a>
      </div>
    </div>
    <hr />
    <!-- Questions? -->
    <div class="row pt20">
      <div class="columns medium-12">
        <h5>Need support?</h5>
        <p>If you have any questions about your Membership, contact our Client Care Department at 1-800-945-3485 x 3</p>
      </div>
    </div>
    
  </div>
</div>


</asp:Content>
