<%@ Page Title="" Language="VB" MasterPageFile="~/_global2.master" AutoEventWireup="false" CodeFile="default2.aspx.vb" Inherits="default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headStyles" Runat="Server">
  <link href="<%= Page.ResolveUrl("~/assets/styles/css/global.min.css") %>" rel="stylesheet" />
  <link href="<%= Page.ResolveUrl("~/assets/styles/css/home.min.css") %>" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="headOther" Runat="Server">
  <meta name="robots" content="noindex, nofollow">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="globalContent" Runat="Server">


<!-- Hero -->
<div id="hero" class="home-header">        
  <div class="orbit" role="region" aria-label="Slide label" data-orbit data-options="animInFromLeft:fade-in; animInFromRight:fade-in; animOutToLeft:fade-out; animOutToRight:fade-out;">
    <ul class="orbit-container text-light-100">
      <button class="orbit-previous"><span class="show-for-sr">Previous Slide</span><svg width="15" height="30" viewBox="391 296 10 20"><path d="M391.4 306c0 0.2 0.1 0.4 0.2 0.6l7.5 9c0.3 0.4 0.9 0.4 1.2 0.1 0.4-0.3 0.4-0.9 0.1-1.2l-7-8.5 7-8.5c0.3-0.4 0.3-0.9-0.1-1.2 -0.4-0.3-1-0.3-1.2 0.1l-7.5 9C391.5 305.6 391.4 305.9 391.4 306z" fill="#FFF" /></svg></button>
      <button class="orbit-next"><span class="show-for-sr">Next Slide</span><svg width="15" height="30" viewBox="-161.7 223.9 25.4 54.1"><path d="M-136.9 249.4l-20.5-24.6c-0.8-1-2.4-1.2-3.4-0.3 -1 0.9-1.2 2.4-0.3 3.4l19.2 23.1 -19.2 23.1c-0.8 1-0.7 2.5 0.3 3.4s2.5 0.7 3.4-0.3l20.5-24.6c0.4-0.4 0.6-1 0.6-1.5S-136.5 249.8-136.9 249.4z" fill="#FFF" /></svg></button>
      <li class="is-active orbit-slide" data-interchange="[assets/images/home/header/sophia-sanchez.jpg, small]" style="background-position:bottom left;">
        <div class="row expanded home-header-content">
          <div class="columns large-8 large-offset-4">
            <h1 class="home-header-headline-large"><strong>1 in 8 Homes</strong> are sold by Buffini&nbsp;&amp;&nbsp;Company Trained&nbsp;Agents.</h1>
          </div>
        </div>
      </li>
      <li class="orbit-slide" data-interchange="[assets/images/home/header/elizabeth-lucchesi.jpg, small]" style="background-position:bottom left;">
        <div class="row expanded home-header-content">
          <div class="columns large-8 large-offset-4">
            <h1 class="home-header-headline-small">A unique and highly-effective <strong>lead generation system</strong>, comprehensive business coaching and training programs.</h1>
          </div>
        </div>
      </li>
      <li class="orbit-slide" data-interchange="[assets/images/home/header/mike-strouff.jpg, small]" style="background-position:bottom right;">
        <div class="row expanded home-header-content">
          <div class="columns large-7">
            <h1 class="home-header-headline-large">20 Years, <strong>3 million people</strong> coached and trained in 37&nbsp;countries</h1>
          </div>
        </div>
      </li>
      <li class="orbit-slide" data-interchange="[assets/images/home/header/tyler-potter.jpg, small]" style="background-position:bottom right;">
        <div class="row expanded home-header-content">
          <div class="columns large-7">
            <h1 class="home-header-headline-large">One2One Coaching members earn an average yearly <strong>salary of $358,486</strong></h1>
          </div>
        </div>
      </li>
      <li class="orbit-slide" data-interchange="[assets/images/home/header/wells-fargo.jpg, small]" style="background-position:bottom right;">
        <div class="row expanded home-header-content">
          <div class="columns large-7">
            <h1 class="home-header-headline-large">Our members are individual agents to the <strong>largest mortgage company</strong> in the&nbsp;world</h1>
          </div>
        </div>
      </li>
      <h5 class="orbit-caption text-center p40 show-for-large">Buffini &amp; Company is the largest real estate coaching and training company in North&nbsp;America.&nbsp;&nbsp;<a href="#stories" class="link-light">See&nbsp;how&nbsp;it&nbsp;can&nbsp;work&nbsp;for&nbsp;you!</a></h5> 
  </div> 
</div>


<!-- Stories -->
<section id="stories" class="row expanded text-light-100 home-stories">
  <!-- Ben Andrews -->
  <a data-toggle="story-ben-andrews">
    <div class="columns medium-12 large-4 home-story" data-interchange="[assets/images/home/stories/ben-andrews.jpg, small]">
      <h2 class="home-story-headline">&quot;I went from $300 in the bank to $22.7 Million in Sales Volume!&quot;</h2>
      <img src="assets/images/global/icons/play-circled-light.png" width="40">
      <h5 class="p10 text-light-60">Watch Ben's story</h5>
    </div>
  </a>
  <!-- Tim & Gina Johnson -->
  <a data-toggle="story-tim-gina-johnson">
    <div class="columns medium-6 large-4 home-story" data-interchange="[assets/images/home/stories/tim-gina-johnson.jpg, small]">
      <h2 class="home-story-headline">&quot;We're taking an entire month off to go sailing!&quot;</h2>
      <img src="assets/images/global/icons/play-circled-light.png" width="40">
      <h5 class="p10 text-light-60">Watch Tim &amp; Gina's story</h5>
    </div>
  </a>  
  <!-- Gloria Yu -->
  <a data-toggle="story-gloria-yu">
    <div class="columns medium-6 large-4 home-story" data-interchange="[assets/images/home/stories/gloria-yu.jpg, small]">
      <h2 class="home-story-headline">&quot;I now have a meaningful and fulfilled life that money cannot&nbsp;buy.&quot;</h2>
      <img src="assets/images/global/icons/play-circled-light.png" width="40">
      <h5 class="p10 text-light-60">Watch Gloria's story</h5>
    </div> 
  </a>
  <a class="home-stories-view-more" href="stories/default.aspx" target="_blank">View more stories</a>
</section> 


<!-- Offerings -->
<section id="offerings" class="row expanded small-up-1 medium-up-2 large-up-4 home-offerings">
  <h3 class="mb40">What We Offer</h3>  
  <a href="coaching/default.aspx" class="column column-block">
    <div class="home-offerings-block home-offerings-block-coaching">
      <h3 class="home-offerings-text">Coaching</h3>
    </div>
  </a>
  <a href="peak-producers.aspx" class="columns column column-block">
    <div class="home-offerings-block home-offerings-block-training">
      <h3 class="home-offerings-text">Training</h3>
    </div>
  </a>
  <a href="products.aspx" class="columns column column-block">
    <div class="home-offerings-block home-offerings-block-products">
      <h3 class="home-offerings-text">Products</h3>
    </div>
  </a>    
  <a href="events/success-tour/default.aspx" class="columns column column-block">
    <div class="home-offerings-block home-offerings-block-events">
      <h3 class="home-offerings-text">Events</h3>
    </div>
  </a>
</section>


<!-- The latest -->
<section id="latest" class="row expanded home-latest"> 
  <h3 class="mb40">The latest</h3>  
  <!-- Carousel Container -->
  <div class="owl-carousel" data-equalizer>
    <!-- Carousel Item -->
    <div class="card home-latest-card" data-equalizer-watch>
     <a href="products/blitz/default.aspx">
      <img src="assets/images/home/latest/blitz-launch.jpg">
      <div class="card-section">
        <h5 class="home-latest-card-headline">Buffini &amp; Company's Blitz</h5>
        <p>Join the largest coordinated, lead-generation program in the history of the real estate business!</p>
      </div>
     </a>
    </div>
    <!-- Carousel Item -->
    <div class="card home-latest-card" data-equalizer-watch>
      <a href="events/success-tour/default.aspx">
        <img src="assets/images/home/latest/success-tour-san-diego.jpg">
        <div class="card-section">
          <h5 class="home-latest-card-headline">Upcoming Event</h5>
          <p>The first stop for 2017 &quot;Brian Buffini’s Success Tour&quot;, San Diego, California. Don’t miss the all new &quot;Giver’s Guide to Greatness&quot;.</p>
        </div>
      </a>
    </div>
    <!-- Carousel Item -->
    <div class="card home-latest-card" data-equalizer-watch>
      <a href="events/gamechangers/default.aspx">
        <img src="assets/images/home/latest/gamechangers.jpg">
        <div class="card-section">
          <h5 class="home-latest-card-headline">All New Event</h5>
          <p>All new in 2017 &ndash; this 1-day event will be a Game Changer! Don’t miss Joe Niego, Brian Wildermuth, and a rare appearance from Kevin Buffini!</p>
        </div>
      </a>
    </div>
    <!-- Carousel Item -->
    <div class="card home-latest-card" data-equalizer-watch>
      <a href="http://blog.buffiniandcompany.com/make-mastery-goal-2017">
        <img src="assets/images/home/latest/blog-mastery.jpg">
        <div class="card-section">
          <h5 class="home-latest-card-headline">It's a Good Life Blog</h5>
          <p>Mastery takes time, and while you may not achieve it in 2017, you can start on the path. With practice and patience, you’ll be able to achieve mastery. Get inspired to achieve it this year!</p>
        </div>
      </a>
    </div>
    <!-- Carousel Item -->
    <div class="card home-latest-card" data-equalizer-watch>
      <a href="http://podcast.brianbuffini.com/episode-033-rest-run-cycle">
        <img src="assets/images/home/latest/podcast.jpg">
        <div class="card-section">
          <h5 class="home-latest-card-headline">The Brian Buffini Show Podcast</h5>
          <p>Don’t miss &quot;The Rest-Run Cycle&quot; in Episode 33 where Brian explores how to achieve more in less time.</p>
        </div>
      </a>
    </div>
  </div>
</section>
      

<!-- Company -->
<section id="company" class="home-company row expanded">
  <div class="columns large-6 large-offset-6">
    <h3 class="mb20">Impacting &amp; Improving Lives</h3>
    <h5 class="mb20">For over 20 years, the mission of Buffini &amp; Company has been to impact and improve the lives of people through sharing its unique and highly-effective lead generation system and comprehensive business coaching and training programs.  To date, the company has helped over 3 million people in 37 countries improve their business, increase their net profit, and enhance their quality of life.</h5>
    <a href="about-buffini-and-company.aspx" class="button white hollow">Learn more</a>
  </div>
</section>


<!-- Partners -->
<section id="partners" class="home-partners">
  <div class="row expanded">
    <h3 class="columns large-12 mb40">Our Partners</h3>
  </div>
  <!-- Primary Partners -->
  <div class="row expanded small-up-2 medium-up-4 large-up-8">
    <div class="column column-block">
      <img src="assets/images/home/partners/berkshire-hathaway-home-services.jpg" class="thumbnail" alt="">
    </div>
    <div class="column column-block">
      <img src="assets/images/home/partners/century-21.jpg" class="thumbnail" alt="">
    </div>
    <div class="column column-block">
      <img src="assets/images/home/partners/coldwell-banker.jpg" class="thumbnail" alt="">
    </div>
    <div class="column column-block">
      <img src="assets/images/home/partners/keller-williams.jpg" class="thumbnail" alt="">
    </div>
    <div class="column column-block">
      <img src="assets/images/home/partners/prudential.jpg" class="thumbnail" alt="">
    </div>
    <div class="column column-block">
      <img src="assets/images/home/partners/remax.jpg" class="thumbnail" alt="">
    </div>
    <div class="column column-block">
      <img src="assets/images/home/partners/private-label-realty.jpg" class="thumbnail" alt="">
    </div>
    <div class="column column-block">
      <img src="assets/images/home/partners/wells-fargo-home-mortgage.jpg" class="thumbnail" alt="">
    </div>
  </div>
  <!-- Additional Partners -->
  <a id="toggleMorePartnerLogos" class="home-partners-toggle-more">View more</a>
  <div id="morePartnerLogos" class="row expanded small-up-2 medium-up-4 large-up-8" style="display:none;">
    <div class="column column-block">
      <img src="assets/images/home/partners/royal-lepage.jpg" class="thumbnail" alt="">
    </div>
    <div class="column column-block">
      <img src="assets/images/home/partners/weichert-realtors.jpg" class="thumbnail" alt="">
    </div>
    <div class="column column-block">
      <img src="assets/images/home/partners/realty-executives.jpg" class="thumbnail" alt="">
    </div>
    <div class="column column-block">
      <img src="assets/images/home/partners/real-living.jpg" class="thumbnail" alt="">
    </div>
    <div class="column column-block">
      <img src="assets/images/home/partners/pmz-real-estate.jpg" class="thumbnail" alt="">
    </div>
    <div class="column column-block">
      <img src="assets/images/home/partners/homesmart.jpg" class="thumbnail" alt="">
    </div>
    <div class="column column-block">
      <img src="assets/images/home/partners/dominion-lending.jpg" class="thumbnail" alt="">
    </div>
    <div class="column column-block">
      <img src="assets/images/home/partners/exit.jpg" class="thumbnail" alt="">
    </div> 
  </div>
</section>


<!-- Modals -->
<!-- Gina Johnson -->
<div class="large reveal" id="story-tim-gina-johnson" data-reveal data-reset-on-close="true" data-animation-in="fade-in" data-animation-out="fade-out">
  <h3>Tim &amp; Gina Johnson</h3>
<div class="flex-video widescreen">
  <iframe src="https://www.youtube.com/embed/bpib6dK5eBE?rel=0&showinfo=0&controls=1" frameborder="0" allowfullscreen></iframe>
  </div>
  <button class="close-button" data-close aria-label="Close reveal" type="button">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
<!-- Gloria Yu -->
<div class="large reveal" id="story-gloria-yu" data-reveal data-reset-on-close="true" data-animation-in="fade-in" data-animation-out="fade-out">
  <h3>Gloria Yu</h3>
<div class="flex-video widescreen">
  <iframe src="https://www.youtube.com/embed/AMkPdpUfgew?rel=0&showinfo=0&controls=1" frameborder="0" allowfullscreen></iframe>
  </div>
  <button class="close-button" data-close aria-label="Close reveal" type="button">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
<!-- Ben Andrews -->
<div class="large reveal" id="story-ben-andrews" data-reveal data-reset-on-close="true" data-animation-in="fade-in" data-animation-out="fade-out">
  <h3>Ben Andrews</h3>
<div class="flex-video widescreen">
  <iframe src="https://www.youtube.com/embed/bIYDJcnbZck?rel=0&showinfo=0&controls=1" frameborder="0" allowfullscreen></iframe>
  </div>
  <button class="close-button" data-close aria-label="Close reveal" type="button">
    <span aria-hidden="true">&times;</span>
  </button>
</div>


</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="bodyScripts" Runat="Server">
<script type="text/javascript" src="assets/scripts/primary/libraries/jquery/owl.carousel.min.js"></script>
<script>
  // Responsive Carousel for the 'Latest' section
  $('.owl-carousel').owlCarousel({
    loop: false,
    margin: 30,
    responsiveClass: true,
    responsive: {
      0: {
        items: 1,
        nav: true
      },
      640: {
        items: 3,
        nav: false
      },
      1200: {
        items: 4,
        nav: true,
        loop: false
      }
    }
  });
  // Smooth scroll to stories section
  $('a[href="#stories"]').click(function() {
    $('html, body').animate({
      scrollTop: $('#stories').offset().top
    }, 500);
    return false;
  });
  // Show more partner logos
  $('#toggleMorePartnerLogos').on('click', function() {
    $('#toggleMorePartnerLogos').slideUp();
    $('#morePartnerLogos').fadeToggle();
  });
</script>
</asp:Content>

