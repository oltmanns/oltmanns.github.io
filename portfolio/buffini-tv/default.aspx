<%@ Page Title="Buffini TV" Language="VB" MasterPageFile="~/_training.master" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="training_buffini_tv_default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">


  <!-- Header -->
  <div class="btv-header">
    <div class="row pt160 pb120">
      <div class="columns large-6">
        <img src="../../assets/images/global/logos/buffini-tv-light.png" class="float-center" />
      </div>
      <div class="columns large-4 mt70">
        <div class="row text-center large-text-right">
          <div class="columns small-6">
            <a href="https://broadcast.buffiniandcompany.com/BTV/Login.aspx" class="button large hollow white expanded">Log in</a>
          </div>
          <div class="columns small-6">
            <a href="https://www.buffiniandcompany.com/cart/store-services.aspx?P=BuffiniTV" class="button large sky expanded">Sign up</a>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Video (clicking on section triggers modal) -->
  <a data-open="btvVideo">
    <div class="btv-watch" data-interchange="[../../assets/images/training/buffini-tv/bg-watch-md.jpg, small], [../../assets/images/training/buffini-tv/bg-watch-md.jpg, medium], [../../assets/images/training/buffini-tv/bg-watch-lg.jpg, large]">
      <div class="row">
        <div class="columns medium-12">
          <h2 class="text-center btv-watch-headline">Entertaining, Interactive Training &amp; Motivation on&nbsp;the&nbsp;Web</h2>
          <img src="../../assets/images/global/icons/play-circled-light.png" class="btv-watch-icon" width="90" />
        </div>
      </div>
    </div>
  </a>

  <!-- Learn / Laugh / Succeed -->
  <div class="text-center pt60">
    <div class="row">
      <div class="columns medium-12">
        <h3 class="mb60">Now you can broadcast Brian Buffini’s powerful business training into your office every month with Buffini TV! Get ready to learn, laugh and succeed.</h3>
      </div>
      <div class="columns medium-4 mb60">
        <img src="../../assets/images/training/buffini-tv/learn.jpg" />
        <h4>Learn</h4>
        <p>Recruit and retain the very best agents by bringing Brian Buffini’s cutting-edge insights and success strategies to your&nbsp;office.</p>
      </div> 
      <div class="columns medium-4 mb60">
        <img src="../../assets/images/training/buffini-tv/laugh.jpg" />
        <h4>Laugh</h4>
        <p>Together with your agents you’ll enjoy side-splitting humor meets hard-earned wisdom in Brian Buffini’s practical content for building a highly profitable business. </p>
      </div> 
      <div class="columns medium-4 mb60">
        <img src="../../assets/images/training/buffini-tv/succeed.jpg" />
        <h4>Succeed</h4>
        <p>Offer Buffini TV in your office and become a valuable hub for your agents – they’re motivated and equipped for success, and you are too!</p>
      </div>                   
    </div>
  </div>

  <!-- CTA -->
  <div class="btv-cta">
    <div class="row">
      <div class="columns medium-12">
        <h2 class="text-center"><strong>Sign up for Buffini TV</strong></h2>
      </div>
      <div class="columns hide-for-small-only large-5 mt40 mb20">
        <img src="../../assets/images/training/buffini-tv/cta-tv.png" class="float-center" />
      </div>
      <div class="columns large-offset-1 large-6 mt40 mb20 text-center large-text-left">
        <h3>Bring Brian Buffini to Your Next Office&nbsp;Meeting!</h3>
        <hr />
        <h5>Subscribe for just $99 per month</h5>
        <hr />
        <a href="/cart/store-services.aspx?P=BuffiniTV" class="button large navy">Sign Up Today!</a>
      </div>
    </div>
    <div class="row">
      <div class="columns medium-12">
        <h4 class="mt60 text-center">Questions? <span class="text-light-100">Call&nbsp;1-800&#8203-945&#8203-3485&nbsp;x&nbsp;7</span></h4>      
      </div>
    </div>
  </div>

</div>


<!-- Buffini TV Promo Video -->
<div class="reveal large" id="btvVideo" data-reveal data-animation-in="fade-in" data-animation-out="fade-out">
  <h4>Preview Buffini TV</h4>
  <div class="responsive-embed widescreen">
    <iframe src="https://www.youtube.com/embed/fVvMcIVPQU4?rel=0&showinfo=0" frameborder="0" allowfullscreen></iframe>
  </div>
  <button class="close-button" data-close aria-label="Close modal" type="button">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
</asp:Content>

