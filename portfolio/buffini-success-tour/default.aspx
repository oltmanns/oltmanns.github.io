<%@ Page Title="Brian Buffini's Success Tour" Language="VB" MasterPageFile="~/_events.master" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="events_success_tour_default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <meta property="og:title" content="Join me at the Success Tour this year!" />
  <meta property="og:type" content="website" />
  <meta property="og:url" content="https://www.buffiniandcompany.com/successtour" />
  <meta property="og:image" content="https://www.buffiniandcompany.com/assets/images/events/success-tour/social-share-logo.jpg" />
  <meta property="og:description" content="This real estate event will set you up for success in both your business and life." />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">

<!-- Hero -->
<div class="hero hero-full bbst-hero-primary">
	<div class="row">
		<!-- Content for Large Screens -->
		<div class="large-12 columns show-for-large">
			<img class="float-center" src="../../assets/images/events/success-tour/logo-white-line-lg.png" />
			<h2 class="text-center pt20">The Giver's Guide to Greatness</h2>
			<a href="register.aspx" class="float-center button large ruby radius mt40" style="max-width:260px;">Register now!</a>
		</div>
		<!-- Content for Small Screens -->
		<div class="small-12 columns hide-for-large pt200 pb200">
			<img class="float-center mb40" src="../../assets/images/events/success-tour/logo-white-line-sm.png" />
			<h2 class="text-center pt20">The Giver's Guide to Greatness</h2>
			<a href="register.aspx" class="float-center button large ruby radius mt40" style="max-width:200px;">Register now!</a>
		</div>
	</div>
</div>

<div id="main">


<!-- Sub Nav -->
<div class="sub-nav is-transparent bbst-sub-nav" data-sticky-container>
  <div class="sticky" data-sticky data-sticky-on="small" data-anchor="main">
    <!-- Sub Nav Toggle For Small Screens -->
    <ul class="menu" data-responsive-toggle="sub-nav-menu" data-hide-for="large">
      <li class="float-left"><a data-toggle>Event Details</a></li>
      <li class="float-right"><a href="register.aspx">Register</a></li>
    </ul>    
    <!-- Sub Nav Menu -->
    <ul id="sub-nav-menu" class="vertical large-horizontal menu expanded">
      <li><a href="#"><span class="bbst-sub-nav-location">San Diego</span><span class="bbst-sub-nav-date">February 15 - 16</span></a></li>
      <li><a href="#"><span class="bbst-sub-nav-location">Richmond</span><span class="bbst-sub-nav-date">March 29 - 30</span></a></li>
      <li><a href="details.aspx?EL=PA"><span class="bbst-sub-nav-location">Philadelphia</span><span class="bbst-sub-nav-date">June 15-16</span></a></li>
      <li><a href="details.aspx?EL=TX"><span class="bbst-sub-nav-location">Dallas</span><span class="bbst-sub-nav-date">September 6 - 7</span></a></li>
      <li><a href="details.aspx?EL=CA"><span class="bbst-sub-nav-location">San Jose</span><span class="bbst-sub-nav-date">October 17-18</span></a></li>
      <li><a href="details.aspx?EL=ON"><span class="bbst-sub-nav-location">Toronto</span><span class="bbst-sub-nav-date">November 29 - 30</span></a></li>
    </ul>
  </div>
</div>	


<!-- Overview -->
<section id="overview" class="bbst-overview-primary">
  <div class="row">
    <div class="columns large-10 large-centered">

      <!-- Intro Text / Video -->
	    <div class="row pt100 pb40">
		    <div class="medium-12 columns">
			    <h2 class="text-center">Join the top earners in real estate at the Success&nbsp;Tour</h2>
		    </div>
	    </div>
	    <div class="row">
		    <div class="columns medium-12">
			    <div class="responsive-embed widescreen widescreen mb40">
			      <iframe width="960" height="540" src="https://www.youtube.com/embed/WdmBI4mEK2g?showinfo=0&wmode=opaque&rel=0" frameborder="0" allowfullscreen></iframe>
			    </div>
		    </div>
	    </div>
	    <div class="row pb60">
		    <div class="columns medium-12">
		      <h6 class="text-light-50">Want to drastically improve your business, generate more high-quality leads, have more work/life balance, and make more money? Join thousands of real estate professionals across North America who've been trained at Brian Buffini's Success Tour and make up to 12x the NAR national average in income. At the Success Tour, you'll learn the lead-generation activities that produce results and discover how you can achieve success, without burnout! Plus, you'll be inspired by the industry's most sought after speakers.</h6>
		    </div>	
	    </div>
	    
	    <!-- Why Attend -->
	    <div class="bbst-why-attend show-for-large">
	      <div class="row">
	        <div class="columns medium-12">
	          <h2 class="medium-12 columns text-center mb50">Why Should I Attend?</h2>
	          <div class="row mb70">
	            <div class="large-4 columns mb10">
	              <div class="row">
	                <img class="medium-2 columns" src="../../assets/images/global/icons/checkmark-circled-blue.png" />
	                <p class="medium-10 columns">Network with like-minded professionals.</p>
	              </div>
	            </div>
	            <div class="large-4 columns mb10">
	              <div class="row">
	                <img class="medium-2 columns" src="../../assets/images/global/icons/checkmark-circled-blue.png" />
	                <p class="medium-10 columns">Get Brian Buffini's bold predictions of where the market is headed.</p>
	              </div>
	            </div>	
	            <div class="large-4 columns mb10">
	              <div class="row">
	                <img class="medium-2 columns" src="../../assets/images/global/icons/checkmark-circled-blue.png" />
	                <p class="medium-10 columns">Experience some of the greatest speakers in the world.</p>
	              </div>
	            </div>  
	            <div class="large-4 columns mb10">
	              <div class="row">
	                <img class="medium-2 columns" src="../../assets/images/global/icons/checkmark-circled-blue.png" />
	                <p class="medium-10 columns">Go home with an actionable business plan.</p>
	              </div>
	            </div>	
	            <div class="large-4 columns mb10">
	              <div class="row">
	                <img class="medium-2 columns" src="../../assets/images/global/icons/checkmark-circled-blue.png" />
	                <p class="medium-10 columns">Make this year your best ever!</p>
	              </div>
	            </div> 
	            <div class="large-4 columns mb10">
	              <div class="row">
	                <%--<img class="medium-2 columns" src="../../assets/images/global/icons/checkmark-circled-blue.png" />
	                <p class="medium-10 columns">Learn how technology can help you grow your business.</p>--%>
	              </div>
	            </div>
	          </div>	
	        </div>
	      </div>
	    </div>	
	    
	    <!-- 2-Ways -->
	    <div class="bbst-two-ways row pb100" data-equalizer data-equalize-by-row="true">
		    <div class="medium-12 columns">
			    <h2 class="text-center pb40">Two Ways to Watch the Success Tour</h2>		
		      <!-- In-Person -->
		      <div class="medium-6 columns mb30">
		        <div class="bbst-way-to-watch">
	            <img src="../../assets/images/events/success-tour/two-ways-in-person.jpg" alt="Real Estate Event in Person" />
	            <div class="bbst-way-to-watch-details">
		            <div class="row">
		              <div class="medium-12 large-4 columns">
		                <h4>In-Person</h4>
		              </div>
		              <div class="medium-12 large-8 columns">
		                <h5 class="bbst-way-to-watch-price">Early bird price: $295</h5>
		              </div>
		            </div>
		            <div class="row">
		              <div class="large-12 columns">
		                <p>Experience this two-day event in person, plus exchange referrals with other professionals at the event! <a href="details.aspx?EL=SD">Learn&nbsp;more</a></p>
		              </div>
		            </div>
	            </div>
		        </div>
		      </div>
	        <!-- Live-Broadcast -->
		      <div class="medium-6 columns mb30">
	          <div class="bbst-way-to-watch">
	            <img src="../../assets/images/events/success-tour/two-ways-live-broadcast-session-04.jpg" alt="Real Estate Current Events & News Update - Live Broadcast" />
	            <div class="bbst-way-to-watch-details">
		            <div class="row">
		              <div class="medium-12 large-6 columns">
		                <h4>Live Broadcast</h4>
		              </div>
		              <div class="medium-12 large-6 columns">
		                <h5 class="bbst-way-to-watch-price">$95</h5>
		              </div>
		            </div>
		            <div class="row">
		              <div class="large-12 columns">
		                <p>Skip the travel and stream Day 1 direct to your office. Invite others to join you for free! <a href="details.aspx?EL=SD&ET=LB">Learn&nbsp;more</a></p>
		              </div>
		            </div>
	            </div>
	          </div>
		      </div>
	        <div class="medium-12 columns mb30">
	          <div class="bbst-way-to-watch">
	            <h5 class="text-center text-light-60 p20">Members Attend Free</h5>
	          </div>
	        </div>
          <div class="row">
            <div class="medium-12 columns">
              <h4 class="text-center text-light-40">Call 800-945-3485 x 4</h4>
            </div>
          </div>
		    </div>
	    </div>

    </div><!-- End row -->
  </div><!-- End columns -->
</section><!-- End Overview -->


<!-- Speakers -->
<section class="bbst-speakers">
  <div class="row pt100 pb60">
	  <div class="large-10 columns large-centered">
	    <h2 class="text-center mb60">2017 Features this Powerful Lineup&nbsp;of&nbsp;Speakers!</h2>
      <div class="row small-up-1 medium-up-2 large-up-3 text-center">
        <!-- Speaker - Brian Buffini -->
        <div class="column speaker mb60">
          <a data-open="modal-brian-buffini">
            <img class="speaker-image" src="../../assets/images/events/success-tour/speaker-brian-buffini.png" />
    	      <h4>Brian Buffini</h4>
            <h6>Featured Speaker</h6>
          </a>
        </div>
        <!-- Speaker - Darren Hardy -->
        <div class="column speaker mb60">
          <a data-open="modal-darren-hardy">
            <img class="speaker-image" src="../../assets/images/events/success-tour/speaker-darren-hardy.png" />
    	      <h4>Darren Hardy</h4>
            <h6>Featured Speaker | San Diego</h6>
          </a>
        </div>
        <!-- Speaker - Andy Andrews -->
        <div class="column speaker mb60">
          <a data-open="modal-andy-andrews">
            <img class="speaker-image" src="../../assets/images/events/success-tour/speaker-andy-andrews.png" />
    	      <h4>Andy Andrews</h4>
            <h6>Featured Speaker | Richmond</h6>
          </a>
        </div>
          <!-- Speaker - Justin Forsett -->
        <div class="column speaker mb60">
          <a data-open="modal-justin-forsett">
            <img class="speaker-image" src="../../assets/images/events/success-tour/speaker-justin-forsett.png" />
    	      <h4>Justin Forsett</h4>
            <h6>Featured Speaker | Philadelphia</h6>
          </a>
        </div>
        <!-- Speaker - Carey Lohrenz -->
        <div class="column speaker mb60">
          <a data-open="modal-carey-lohrenz">
            <img class="speaker-image" src="../../assets/images/events/success-tour/speaker-carey-lohrenz.png" />
    	      <h4>Carey Lohrenz</h4>
            <h6>Featured Speaker | Dallas</h6>
          </a>
        </div>
        <!-- Speaker - Molly Fletcher -->
        <div class="column speaker mb60">
          <a data-open="modal-molly-fletcher">
            <img class="speaker-image" src="../../assets/images/events/success-tour/speaker-molly-fletcher.png" />
    	      <h4>Molly Fletcher</h4>
            <h6>Featured Speaker | San Jose</h6>
          </a>
        </div>
        <!-- Speaker - Joe Niego -->
        <div class="column speaker mb60">
          <a data-open="modal-joe-niego">
            <img class="speaker-image" src="../../assets/images/events/success-tour/speaker-joe-niego.png" />
    	      <h4>Joe Niego</h4>
            <h6>Featured Speaker</h6>
          </a>
        </div>
        <!-- Speaker - Kevin Buffini -->
        <div class="column speaker mb60">
          <a data-open="modal-kevin-buffini">
            <img class="speaker-image" src="../../assets/images/events/success-tour/speaker-kevin-buffini.png" />
    	      <h4>Kevin Buffini</h4>
            <h6>Featured Speaker</h6>
          </a>
        </div>
        <!-- Speaker - J'aime Nowak -->
        <div class="column speaker mb60">
          <a data-open="modal-jaime-nowak">
            <img class="speaker-image" src="../../assets/images/events/success-tour/speaker-jaime-nowak.png" />
    	      <h4>J'aime Nowak</h4>
            <h6>Featured Speaker</h6>
          </a>
        </div>
        <!-- Speaker - Mystery Guest -->
        <%--<div class="column speaker mb60">
          <a data-open="modal-mystery">
            <img class="speaker-image" src="../../assets/images/events/success-tour/speaker-silhouette-02.png" />
    	      <h4>Mystery Guests</h4>
            <h6>Featured Speaker</h6>
          </a>
        </div>   --%>
      </div>
    </div>
  </div>
</section>


<!-- Agenda -->
<section id="agenda" class="bbst-agenda">
	<div class="row pt100 pb40">
		<div class="large-10 columns large-centered">
			<h2 class="text-center">The 2017 Agenda</h2>
			
		</div>
	</div>
  <!-- Day 1 -->
	<div class="row pb60">
		<div class="columns large-10 large-centered">
			<div class="agenda-header text-center">
		    <h4><strong>Day 1</strong></h4>
		  </div>
			<table id="day1" class="agenda">
				<tbody>
					<tr class="agenda-row">
						<td class="agenda-time">9:00 AM</td>
						<td class="agenda-session">
							<span class="agenda-session-topic">The Giver’s Guide to Greatness with <a data-open="modal-brian-buffini">Brian Buffini</a></span>
						</td>
					</tr>
					<tr class="agenda-row agenda-break">
						<td class="agenda-time">10:30 AM</td>
						<td class="agenda-session">
							<span class="agenda-session-topic">Break</span>
						</td>
					</tr>			
					<tr class="agenda-row">
						<td class="agenda-time">11:00 AM</td>
						<td class="agenda-session">
							<span class="agenda-session-topic">The Hidden DNA of the Real Estate Business with <a data-open="modal-brian-buffini">Brian Buffini</a></span>
						</td>
					</tr>	
					<tr class="agenda-row agenda-break">
						<td class="agenda-time">12:15 PM</td>
						<td class="agenda-session">
							<span class="agenda-session-topic">Lunch</span>
						</td>
					</tr>		
					<tr class="agenda-row">
						<td class="agenda-time">2:00 PM</td>
						<td class="agenda-session">
							<span class="agenda-session-topic">A Motivational Message from Special Guest</span>
						</td>
					</tr>	
					<tr class="agenda-row agenda-break">
						<td class="agenda-time">3:15 PM</td>
						<td class="agenda-session">
							<span class="agenda-session-topic">Break</span>
						</td>
					</tr>
					<tr class="agenda-row">
						<td class="agenda-time">3:45 PM</td>
						<td class="agenda-session">
							<span class="agenda-session-topic">The Giver’s Guide to Communication with <a data-open="modal-kevin-buffini">Kevin Buffini</a></span>
						</td>
					</tr>	
					<tr class="agenda-row agenda-break">
						<td class="agenda-time">5:00 PM</td>
						<td class="agenda-session">
							<span class="agenda-session-topic">End of Day 1</span>
						</td>
					</tr>			
				</tbody>
			</table>
		</div>
	</div>
  <!-- Day 2 -->
	<div class="row pb100">
		<div class="columns large-10 large-centered">
			<div class="agenda-header text-center">
		    <h4><strong>Day 2</strong></h4>
		  </div>
			<table id="day2" class="agenda">
				<tbody>
					<tr class="agenda-row">
						<td class="agenda-time">9:00 AM</td>
						<td class="agenda-session">
							<span class="agenda-session-topic">How To Be Great With Money with <a data-open="modal-brian-buffini">Brian Buffini</a></span>
						</td>
					</tr>
					<tr class="agenda-row agenda-break">
						<td class="agenda-time">10:15 AM</td>
						<td class="agenda-session">
							<span class="agenda-session-topic">Break</span>
						</td>
					</tr>			
					<tr class="agenda-row">
						<td class="agenda-time">10:45 AM</td>
						<td class="agenda-session">
							<span class="agenda-session-topic">The Path to High Performance with <a data-open="modal-brian-buffini">Brian Buffini</a></span>
						</td>
					</tr>	
					<tr class="agenda-row agenda-break">
						<td class="agenda-time">12:00 PM</td>
						<td class="agenda-session">
							<span class="agenda-session-topic">Lunch</span>
						</td>
					</tr>		
					<tr class="agenda-row">
						<td class="agenda-time">2:00 PM</td>
						<td class="agenda-session">
							<span class="agenda-session-topic">How to Create Inventory Instantly with <a data-open="modal-joe-niego">Joe Niego</a></span>
						</td>
					</tr>	
					<tr class="agenda-row agenda-break">
						<td class="agenda-time">3:30 PM</td>
						<td class="agenda-session">
							<span class="agenda-session-topic">Break</span>
						</td>
					</tr>
					<tr class="agenda-row">
						<td class="agenda-time">4:00 PM</td>
						<td class="agenda-session">
							<span class="agenda-session-topic">The Next Steps to Greatness with <a data-open="modal-jaime-nowak">J’aime Nowak</a></span>
						</td>
					</tr>	
					<tr class="agenda-row agenda-break">
						<td class="agenda-time">5:00 PM</td>
						<td class="agenda-session">
							<span class="agenda-session-topic">End of Day 2</span>
						</td>
					</tr>			
				</tbody>
			</table>
		</div>
	</div>
</section>


<!-- Sponsor -->
<div class="row pt40 pb40">
  <div class="large-12 columns">
    <img src="../../assets/images/events/success-tour/sponsored-by-wells-fargo.png" class="float-center" />
  </div> 
</div>


<!-- Modal for Brian Buffini -->
<div id="modal-brian-buffini" class="reveal" data-reveal data-reset-on-close="true" data-animation-in="fade-in" data-animation-out="fade-out">
  <div class="reveal-content">
    <h3 class="modal-title">Brian Buffini</h3>
    <div class="responsive-embed widescreen widescreen mb40">
	    <iframe width="960" height="540" src="https://www.youtube.com/embed/9lRQdnmQh_Q?showinfo=0&rel=0" frameborder="0" allowfullscreen></iframe>
	  </div>
    <p>Brian Buffini was born and raised in Dublin, Ireland, and immigrated to San Diego in 1986 where he became the classic American rags to riches story. After becoming one of the nation’s top Realtors, he founded Buffini & Company – an organization dedicated to sharing his powerful lead-generation systems with others. Based in Carlsbad, California, Buffini & Company has trained over 3 million business professionals in 37 countries and currently coaches and trains more than 25,000 business people across North America. Today, Brian reaches over a million listeners a year through his popular “Brian Buffini Show” podcast and travels the world sharing a message of encouragement about how to “live the good life.” Brian’s classic Irish wit, hard-earned wisdom and motivational style make him a dynamic speaker, adept at helping people tap into their full potential and achieve their&nbsp;dreams.</p>
    <p>Learn more by visiting his <a href="http://www.brianbuffini.com" target="_blank">website</a></p>
    <div class="show-for-small-only">
      <hr class="mt20" />
      <a class="button small secondary hollow radius float-right" data-close>Close</a>
    </div>
    <button class="close-button" data-close aria-label="Close modal" type="button"><span aria-hidden="true">&times;</span></button>
  </div>
</div>

<!-- Modal for Darren Hardy -->
<div id="modal-darren-hardy" class="reveal" data-reveal data-reset-on-close="true" data-animation-in="fade-in" data-animation-out="fade-out">
  <div class="reveal-content">
    <h3 class="modal-title">Darren Hardy</h3>
    <%--<div class="responsive-embed widescreen widescreen mb40">
	    <iframe width="960" height="540" src="#" frameborder="0" allowfullscreen></iframe>
	  </div>--%>
    <p>Darren is today's preeminent Success Mentor, a highly sought-after keynote speaker, <em>New York Times</em> bestselling author, entrepreneur and former Publisher and Editor of <em>Success</em> magazine.</p> 
    <p>Darren is a central leader in the personal growth and success television networks producing over 1,000 TV shows with most every known thought leader of our time. Over the past decade, Darren was the visionary force behind the rebirth of <em>Success</em> magazine as its publisher and editor. These positions have given him unique and unprecedented access to interview, investigate and publish the stories of the most successful people on the planet, including, Richard Branson, Steve Jobs, Elon Musk, Jeff Bezos, Mark Zuckerberg, Howard Schultz, Steve Wynn, Jack Welch and many more. He has uncovered the secrets to their success and now shares them to empower millions of entrepreneurs globally.</p> 
    <p>Learn more by visiting his <a href="http://darrenhardy.com/" target="_blank">website</a></p>
    <div class="show-for-small-only">
      <hr class="mt20" />
      <a class="button small secondary hollow radius float-right" data-close>Close</a>
    </div>
    <button class="close-button" data-close aria-label="Close modal" type="button"><span aria-hidden="true">&times;</span></button>
  </div>
</div>

<!-- Modal for Andy Andrews -->
<div id="modal-andy-andrews" class="reveal" data-reveal data-reset-on-close="true" data-animation-in="fade-in" data-animation-out="fade-out">
  <div class="reveal-content">
    <h3 class="modal-title">Andy Andrews</h3>
    <%--<div class="responsive-embed widescreen mb40">
	    <iframe width="960" height="540" src="#" frameborder="0" allowfullscreen></iframe>
	  </div>--%>
	  <p>Andy Andrews' life was a typical American story until the age of 19. The loss of both parents - his mother to cancer and his father to an automobile accident - forever altered Andrews' path. Within a short span, he found himself homeless, a pier or garage often provided bed, and without direction. The dramatic change in circumstances forced Andrews to ask himself a simple question: "Is life just a lottery ticket or are there choices one can make to direct his future?" This very question fueled his quest to determine the common denominators between successful historical figures. From this, The Seven Decisions were born, and the rest is history.</p>
      <p>Andrews wrote The New York Time's bestselling "The Traveler's Gift," "The Noticer," and "How Do You Kill 11 Million People?" and has impacted millions with his creative writing and speaking. An international sensation, Andy's challenging personal message contains truths for those in all walks of life.</p>
      <p>For 17 weeks, "The Traveler's Gift: Seven Decisions that Determine Personal Success," remained on the New York Times bestseller list. It has been translated into 20 languages, featured as ABC's Good Morning America's book of the month and sold millions of copies.</p>
      <p>A tale of one man’s search for meaning and success, The Traveler’s Gift outlines the most important qualities for individual growth- hope, faith, and perseverance.</p>
      <p>Lessons derived from “The Traveler’s Gift” influenced 4 US Presidents, the Commander of the Allied Forces, General Schwarzkopf and Hall of Fame golfer, Nancy Lopez and Bob Hope. What’s more, his same message brought together every senior leader of the US Air Force in Europe and the Middle East in the same room to listen.</p>
      <p>Many authors and communicators speak from their personal experience. Andy Andrews is shaped by his life path, but his message also carries the weight of hundreds of lives. Each of these past successes adds credence to the simple yet profound wisdom entertainingly presented by Andrews. With the wit of an entertainer and the gravitas of a powerful communicator, Andy Andrews is unique in today's media driven world. He communicates to audiences from the heart.</p>
      <p>Andy Andrews lives in Orange Beach, Alabama with his wife Polly and their two sons.</p>
      <p>Learn more by visiting his <a href="http://www.andyandrews.com/" target="_blank">website</a></p>
    <div class="show-for-small-only">
      <hr class="mt20" />
      <a class="button small secondary hollow radius float-right" data-close>Close</a>
    </div>
    <button class="close-button" data-close aria-label="Close modal" type="button"><span aria-hidden="true">&times;</span></button>
  </div>
</div>

<!-- Modal for Justin Forsett -->
<div id="modal-justin-forsett" class="reveal" data-reveal data-reset-on-close="true" data-animation-in="fade-in" data-animation-out="fade-out">
  <div class="reveal-content">
    <h3 class="modal-title">Justin Forsett</h3>
	  <p>Justin is in his ninth season in the National Football League and recently signed with the Denver Broncos. He’s played in 104 career games and has spent time with Detroit, Baltimore, Seattle, Indianapolis, Houston and Jacksonville. Justin was named to the Pro Bowl in 2015 following his most successful season in the NFL. He rushed for over 1,200 yards and was named AFC Offensive Player of the Week twice during 2014.</p>
      <p>Justin’s personal journey is one of the best stories in the NFL.</p>
      <p>Justin has a genuine desire to positively impact others with his message of perseverance through life’s disappointments. His witty and down-to-earth personality engages audiences from  corporate environments to youth groups as he shares his inspirational journey of hope, focus, determination and the importance of legacy.</p>
      <p>A native of Mulberry, Florida, Justin played collegiately at the University of California-Berkeley where he ranked third in school history with 3,220 rushing yards and fourth with 26 touchdowns. In his career, Justin has rushed for over 3,700 yards on 760+ carries with eighteen touchdowns. He added 200 receptions for 1,300+ yards and one score.</p>
      <p>Justin’s wife, Angela, was a standout volleyball player at Cal-Berkeley and was on the U.S. Women’s Volleyball team for 5 years. Justin and Angela reside in Maryland with their two sons, Judah and Zion. They are expecting their third child in the spring of 2017.</p>
    <div class="show-for-small-only">
      <hr class="mt20" />
      <a class="button small secondary hollow radius float-right" data-close>Close</a>
    </div>
    <button class="close-button" data-close aria-label="Close modal" type="button"><span aria-hidden="true">&times;</span></button>
  </div>
</div>

<!-- Modal for Molly Fletcher -->
<div id="modal-molly-fletcher" class="reveal" data-reveal data-reset-on-close="true" data-animation-in="fade-in" data-animation-out="fade-out">
  <div class="reveal-content">
    <h3 class="modal-title">Molly Fletcher</h3>
    <div class="responsive-embed widescreen mb40">
	    <iframe width="960" height="540" src="https://www.youtube.com/embed/L7xLl6gK1Qc?showinfo=0&rel=0" frameborder="0" allowfullscreen></iframe>
	  </div>
    <p>Molly Fletcher is a trailblazer in every sense of the word. She is a rare talent of business wisdom, relationship brilliance and unwavering optimism. Fletcher shares her unconventional and unique techniques she applied to become one of the first female sports agents and a successful entrepreneur.</p> 
    <p>Formerly, as President of Client Representation for sports and entertainment agency, CSE, Molly spent two decades as one of the world’s only female sports agents. She was hailed as the “female Jerry Maguire” by CNN as she recruited and represented hundreds of sport’s biggest names, including Hall of Fame pitcher, John Smoltz, PGA TOUR golfer, Matt Kuchar, broadcaster, Erin Andrews, and basketball championship coaches, Tom Izzo and Doc Rivers. As she successfully negotiated over $500 million in contracts and built lasting relationships, she also observed and adopted the traits of those at the top of their game.</p> 
    <p>Fletcher has been featured in ESPN, Fast Company, Forbes and Sports Illustrated, and has energized organizations as diverse as AT&T, Bank of America, Michigan State University, Georgia Tech, the PGA TOUR and Home Depot.  She is the author of three books: A Winner’s Guide to Negotiating; The Business of Being the Best; and The 5 Best Tools to Find Your Dream Career. She’s also the founder of an e-learning platform that provides personal and professional development content for individuals and companies.</p> 
    <p>Fletcher received the Outstanding Alumni award from Michigan State University. She currently serves as a National Trustee member for the Boys & Girls Clubs of America.</p>
    <p>Molly’s energy and passion for life shines through everything she does. She finds her greatest joy at home in Atlanta with her husband, Fred, and their three daughters.</p>
    <p>Learn more by visiting her <a href="https://mollyfletcher.com/" target="_blank">website</a></p>
    <div class="show-for-small-only">
      <hr class="mt20" />
      <a class="button small secondary hollow radius float-right" data-close>Close</a>
    </div>
    <button class="close-button" data-close aria-label="Close modal" type="button"><span aria-hidden="true">&times;</span></button>
  </div>
</div>

<!-- Modal for Carey Lohrenz -->
<div id="modal-carey-lohrenz" class="reveal" data-reveal data-reset-on-close="true" data-animation-in="fade-in" data-animation-out="fade-out">
  <div class="reveal-content">
      <%--<div class="responsive-embed widescreen mb40">
	    <iframe width="960" height="540" src="#" frameborder="0" allowfullscreen></iframe>
	  </div>--%>
    <h3 class="modal-title">Carey Lohrenz</h3>
    <p>Carey Lohrenz knows what it takes to win in one of the highest pressure, extreme environments imaginable: in the cockpit at Mach 2.</p>
    <p>As the first female F-14 Tomcat Fighter Pilot in the U.S. Navy, having flown missions worldwide as a combat-mission-ready United States Navy pilot, Lohrenz is used to working in fast moving, dynamic environments, where inconsistent execution can generate catastrophic results.</p>
    <p>The same challenges are found in business: markets change, customer needs evolve and if you do not adapt quickly your company is at risk.</p>
    <p>In her motivating and engaging keynote presentations, Carey shares her fascinating experiences operating in one of the world's most challenging environments - an aircraft carrier. She is uniquely qualified in the fundamentals of winning under pressure, reducing errors and overcoming obstacles. Her mastery of these fundamentals can help your team triumph in this high-risk, time crunched world.</p>
    <p>Carey Lohrenz's timely message about High Performing Teams and developing a Culture of Learning is based on the best-practices of high reliability organizations. The processes of Planning, Briefing, Debriefing and Adjusting help businesses manage risk while becoming a High Performing Organization. This message resonates with diverse audiences at every level of the company.</p>
    <p>Carey has been requested by name from some of the top Fortune 100 businesses. Her ability to connect with both an audience and on a one-on-one level, coupled with her knowledge and experience in leading high-performing, diverse teams, has made her highly sought after as a business consultant and speaker.</p>
    <p>Carey is a powerhouse in the field of delivering engaging Leadership, High Performing Organizations and Diversity Training that directly impacts a company’s ROI and bottom line. Her experience in the all-male environment of fighter aviation and her ability to pass on the Lessons Learned in her career allow her to deliver insight and guidance from a credible platform on Women’s Leadership Issues.</p>
    <p>Carey has delivered her leadership and strategy experience to such companies as Cisco, Underwriters Laboratories, AT&T, Kimberly Clark, State Farm Insurance and Sea Ray Boats, to name a few. Carey graduated from the University of Wisconsin where she was a varsity rower, also training at the pre-Olympic level. After graduation, she attended the Navy’s Aviation Officer Candidate School before starting flight training and her naval career. She is currently working on her Master’s in Business Administration in Strategic Leadership.</p>
    <p>Learn more by visiting her <a href="http://careylohrenz.com/" target="_blank">website</a></p>
    <div class="show-for-small-only">
      <hr class="mt20" />
      <a class="button small secondary hollow radius float-right" data-close>Close</a>
    </div>
    <button class="close-button" data-close aria-label="Close modal" type="button"><span aria-hidden="true">&times;</span></button>
  </div>
</div>

<!-- Modal for Joe Niego -->
<div id="modal-joe-niego" class="reveal" data-reveal data-options="resetOnClose: true; animationIn: fade-in; animationOut: fade-out;">
  <h3 class="modal-title">Joe Niego</h3>
  <div class="responsive-embed widescreen mb40">
    <iframe width="960" height="540" src="https://www.youtube.com/embed/H24iXR73AgU?showinfo=0" frameborder="0" allowfullscreen></iframe>
  </div>
    <p>A Chicago native, Joe Niego was a star college basketball player and the second draft choice of the NBA’s Houston Rockets. At the end of his playing career, he put the same drive and determination into his real estate career and excelled in national real estate companies as a top producer.</p>
  <p>In 1992, he met Brian Buffini and the two quickly became good friends. Together, they developed systems to proactively generate referred business. In 1994, he started Niego Real Estate, which has grown to become remarkably successful. Using these referral methods, he has sold over 2,500 homes.</p>
  <p>Today, Joe Niego trains agents and lenders across North America on Buffini &amp; Company’s powerful systems to help them dramatically improve business and productivity.</p>
  <p>Learn more by visiting his <a href="http://www.joeniego.com" target="_blank">website</a></p>
    <div class="show-for-small-only">
      <hr class="mt20" />
      <a class="button small secondary hollow radius float-right" data-close>Close</a>
    </div>
    <button class="close-button" data-close aria-label="Close modal" type="button"><span aria-hidden="true">&times;</span></button>
  </div>

<!-- Modal for Kevin Buffini -->
<div id="modal-kevin-buffini" class="reveal" data-reveal data-reset-on-close="true" data-animation-in="fade-in" data-animation-out="fade-out">
  <div class="reveal-content">
    <h3 class="modal-title">Kevin Buffini</h3>
    <p>Kevin Buffini has a very unique perspective on the world of real estate. As Brian buyer’s agent, he utilized the working by referral systems Brian had implemented in his&nbsp;business.</p>
    <p>When Brian founded Buffini & Company, Kevin joined him to share these same systems with audiences across North America. It gave Kevin a deep understanding and insight into the challenges faced by agents and lenders every day.</p>
    <p>For the past 15 years, Kevin has dedicated himself to Buffini & Company’s proprietary communication tool, the Heritage Profile. This tool helps people understand their own natural gifts and abilities, while mastering their unique communication styles.</p>
    <p>Today, Kevin leads the Heritage division, and is excited to bring this training to you.</p>
    <div class="show-for-small-only">
      <hr class="mt20" />
      <a class="button small secondary hollow radius float-right" data-close>Close</a>
    </div>
    <button class="close-button" data-close aria-label="Close modal" type="button"><span aria-hidden="true">&times;</span></button>  
  </div>
</div>

<!-- Modal for J'aime Nowak -->
<div id="modal-jaime-nowak" class="reveal" data-reveal data-options="resetOnClose: true; animationIn: fade-in; animationOut: fade-out;">
  <h3 class="modal-title">J'aime Nowak</h3>
  <div class="responsive-embed widescreen mb40">
    <iframe width="960" height="540" src="https://www.youtube.com/embed/6pgK5Qtj7X8?showinfo=0" frameborder="0" allowfullscreen></iframe>
  </div>
    <p>J’aime Nowak has been a leading force in the real estate industry for over two decades. Having achieved tremendous success – first as an agent, then as a broker – Nowak joined the Buffini & Company staff in 2004, and has now trained thousands of professionals across North America on how to build a profitable business and prosperous life. Today, she is Buffini & Company’s Director of Corporate Development, and also a premier presenter at exclusive events worldwide.</p>
    <div class="show-for-small-only">
      <hr class="mt20" />
      <a class="button small secondary hollow radius float-right" data-close>Close</a>
    </div>
    <button class="close-button" data-close aria-label="Close modal" type="button"><span aria-hidden="true">&times;</span></button>
  </div>

</div>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
<script type="text/javascript">
  $(document).ready(function() {
    // Show story modal if query string variable exists
    var speaker = getQueryVariable('speaker');
    if (speaker) {
      $('#modal-' + speaker).foundation('open');
    }
  });
</script>
</asp:Content>