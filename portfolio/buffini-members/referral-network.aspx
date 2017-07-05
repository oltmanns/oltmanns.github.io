btnMembers1<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="referral-network.aspx.vb" Inherits="ProvidenceSystems.referral_network" %>

<!DOCTYPE html>
<html class="no-js blitz" lang="en">

<head id="Head1" runat="server">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=8, IE=9, IE=10, IE11, IE=edge, chrome=1" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="robots" content="noindex, nofollow">
  <link rel="stylesheet" href="<%=Page.ResolveUrl("~/members-area/assets/styles/css/global.min.css")%>" type="text/css">
  <!--[if lt IE 10]><style type="text/css">.blitz-progress .progress-meter {background:#8aba13;} .blitz-progress .your-progress, .blitz-progress .member-results {left:0;}</style><![endif]--> 
  <%--Google Tag Manager (Includes Analytics)--%>
  <script>(function(w, d, s, l, i) {
          w[l] = w[l] || []; w[l].push({ 'gtm.start':
  new Date().getTime(), event: 'gtm.js'
          }); var f = d.getElementsByTagName(s)[0],
  j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.async = true; j.src = 'https://www.googletagmanager.com/gtm.js?id=' + i + dl; f.parentNode.insertBefore(j, f);
      })(window, document, 'script', 'dataLayer', 'GTM-WMSKGL');</script>
    <style type="text/css">
    body, html {margin: 0; padding: 0; height: 100%; overflow: hidden;}
    #REXEmbed {position:absolute; left: 0; right: 0; bottom: 0; top: 0;}
</style>
</head>

<body>
<form id="form1" runat="server">
    <div id ="REXEmbed" runat="server"></div>

    <%--Message for general members that visit this page immediately after initiating membership--%>
    <div id="msgSetup" runat="server" visible="false" >
      <div class="top-bar" style="position:absolute; top:0; left:0; right:0;">
        <div class="row">
          <div class="column text-center">
            <img src="https://members.buffiniandcompany.com/members-area/assets/images/logos/buffini-referral-network.png" class="mt20 mb20" />
          </div>
        </div>    
      </div>     
      <div class="row pt200 pb200 text-center text-light-100">
        <div class="columns">
          <h2 class="mb60">Your account is being setup.<br>Please check back in one hour.</h2>
          <a href="https://members.buffiniandcompany.com" class="button large sky" runat="server" id="btnMembers2">Go Back to the Members Area</a>
        </div>
      </div>
    </div>

    <%--Message for lender and title-rep members that visit this page immediately after initiating membership--%>
    <div id="msgSetupLenderTitle" runat="server" visible="false">
      <div class="top-bar" style="position:absolute; top:0; left:0; right:0;">
        <div class="row">
          <div class="column text-center">
            <img src="https://members.buffiniandcompany.com/members-area/assets/images/logos/buffini-referral-network.png" class="mt20 mb20" />
          </div>
        </div>    
      </div>
      <div class="row pt200 pb200 text-center text-light-100">
        <div class="columns">
          <h3>To submit your referrals please call<br /><span style="white-space:nowrap;">1-800-945-3485 X 3333</span></h3>
          <a href="https://members.buffiniandcompany.com" class="button large sky mt60" runat="server" id="btnMembers1" >Go Back to the Members Area</a>
        </div>
      </div>
    </div>  

    <%--Message for non-members--%>
    <div id ="msgNonMember" runat="server" visible="false" >
        <div class="top-bar" style="position:absolute; top:0; left:0; right:0;">
        <div class="row">
          <div class="column text-center">
            <img src="https://members.buffiniandcompany.com/members-area/assets/images/logos/buffini-referral-network.png" class="mt20 mb20" />
          </div>
        </div>    
      </div>
      <div class="row pt200 pb200 text-center text-light-100">
        <div class="columns">
          <h3>Activate Now!<br /><span style="white-space:nowrap;">Call 1-800-945-3485</span></h3>
        </div>
      </div>


		<section class="header pt200 pb200 brn-header-primary"></section>

		<section class="pt80 pb80">
			<div class="row mb40">
				<div class="column">
					<h1>Trust Your Referrals are in Good Hands.</h1>
					<h5>The Buffini Referral Network taps into the most powerful network of real estate agents in the industry where referrals are matched with world-class, top producing agents!</h5>
				</div>
			</div>
			<div class="row">
				<div class="columns medium-4">
					<img src="/images/referral-network/brn-find-great-agent.png?dl=1" class="mb20">
					<h4><strong>Find a great agent anywhere in the USA.</strong></h4>
					<p>A one-stop search for finding the “best of the best” performing agents anywhere in North America.</p>
					<blockquote>16% of the population will be moving to another city in 2017.</blockquote>   
				</div>
				<div class="columns medium-4">
					<img src="/images/referral-network/brn-clients-served.jpg?dl=1" class="mb20">
					<h4><strong>Have your clients served by agents we put our name to.</strong></h4>
					<p>Confidently refer your clients nationwide knowing they will receive the same level of service you would provide locally.</p>
					<blockquote>1 in 8 homes in the United States is sold by a Buffini &amp; Company coached and trained agent.</blockquote>
				</div> 
				<div class="columns medium-4">
					<img src="/images/referral-network/brn-track-progress.jpg?dl=1" class="mb20">
					<h4><strong>Track your referral's progress anytime.</strong></h4>
					<p>Transparency online – you can see details anytime through a customize dashboard.</p>
					<blockquote>Did you know that 50% of out-of-area referrals never receive a follow-up call?</blockquote>
				</div>     
			</div>
		</section>

		<section class="pt140 pb140 brn-testimonial">
			<div class="row">
				<div class="columns medium-12 large-6 text-center">
					<h2>&quot;I've closed 46 sales and made $448,180 from referrals through the Buffini Referral Network.&quot;</h2>
					<h5><strong>Tyler Potter</strong><br />Bencia, CA</h5>
				</div>
			</div>
		</section>

		<section class="pt80 pb80">
			<div class="row">
				<div class="column">
					<h2 class="mb40">How it Works</h2>
				</div>
			</div>
			<div class="row">
				<div class="columns medium-4">
					<img src="/images/referral-network/brn-access-network.png?dl=1" class="mb20">
					<h4><strong>1. Access the Network</strong></h4>
					<p>Conveniently receive or submit referrals directly from Buffini &amp; Company’s Referral Maker CRM.</p>
				</div>
				<div class="columns medium-4">
					<img src="/images/referral-network/brn-match-referrals.png?dl=1" class="mb20">
					<h4><strong>2. Match Your Referral</strong></h4>
					<p>Using advanced data science technology, referrals are matched to the top 3 performing agents in the desired location and sent to the client for selection.</p>
				</div>
				<div class="columns medium-4">
					<img src="/images/referral-network/brn-get-paid.png?dl=1" class="mb20">
					<h4><strong>3. Get Paid</strong></h4>
					<p>It’s peace of mind when you are in complete control. You’ll get regular updates and can login anytime to view the progress of your referral transactions via a customized dashboard.</p>
				</div>
			</div>
		</section>

		<section class="pt80 pb80 bg-light-gray">
			<div class="row">
				<div class="column">
					<h2 class="mb40">What it Costs</h2>
				</div>
			</div>
			<div class="row hide-for-small-only mb40">
				<div class="columns medium-4">
					<img src="/images/referral-network/brn-members-join-free.jpg?dl=1" class="mb20" />
				</div>
				<div class="columns medium-4">
					<img src="/images/referral-network/brn-no-annual-fee.jpg?dl=1" class="mb20" />
				</div>
				<div class="columns medium-4">
					<img src="/images/referral-network/brn-no-hidden-charges.jpg?dl=1" class="mb20" />
				</div>    
			</div>
			<div class="row">
				<div class="columns">
					<h4><strong>30% Referral Fee—paid by the receiving agent</strong></h4>
					<p>20% goes to the referring agent, 10% goes to the Buffini Referral Network.</p>
					<h4><strong>Match Your Referral</strong></h4>
					<p>Agents included in the Buffini Referral Network are handpicked and monitored using proprietary technology that tracks performance, training and commitment to service. The network is supported by a 90+ team dedicated to servicing your referrals at the very highest level.</p>      
				</div>   
			</div>
		</section>

		<section class="brn-why pt100 pb100">
			<div class="row">
				<div class="columns large-10">
					<h2 class="mb40">Why You Should Use the Buffini&nbsp;Referral&nbsp;Network</h2>
				</div>
			</div>
			<div class="row">
				<div class="columns large-8">
					<div class="row mb10">
						<div class="columns small-2 medium-1"><svg class="float-right" width="30" height="30" viewBox="0 0 100 100"><path d="M68.6 36.1L43.5 61.2 32.4 50.1c-0.8-0.8-2-0.8-2.8 0 -0.8 0.8-0.8 2 0 2.8l12.5 12.5c0.4 0.4 0.9 0.6 1.4 0.6s1-0.2 1.4-0.6l26.5-26.5c0.8-0.8 0.8-2 0-2.8S69.4 35.3 68.6 36.1z" style="fill:#3498DB;"/><path d="M50 8C27.2 8 8 27.2 8 50s19.2 42 42 42 42-19.2 42-42S72.8 8 50 8zM50 88c-20.6 0-38-17.4-38-38s17.4-38 38-38 38 17.4 38 38S70.6 88 50 88z" style="fill:#3498DB;"/></svg></div>
						<div class="columns small-10 medium-11">Exclusive access to a Buffini &amp; Company created marketing suite designed to help you market yourself not just as a local agent, but as part of a national network of the 'best of the best'.</div>
					</div>
					<div class="row mb10">
						<div class="columns small-2 medium-1"><svg class="float-right" width="30" height="30" viewBox="0 0 100 100"><path d="M68.6 36.1L43.5 61.2 32.4 50.1c-0.8-0.8-2-0.8-2.8 0 -0.8 0.8-0.8 2 0 2.8l12.5 12.5c0.4 0.4 0.9 0.6 1.4 0.6s1-0.2 1.4-0.6l26.5-26.5c0.8-0.8 0.8-2 0-2.8S69.4 35.3 68.6 36.1z" style="fill:#3498DB;"/><path d="M50 8C27.2 8 8 27.2 8 50s19.2 42 42 42 42-19.2 42-42S72.8 8 50 8zM50 88c-20.6 0-38-17.4-38-38s17.4-38 38-38 38 17.4 38 38S70.6 88 50 88z" style="fill:#3498DB;"/></svg></div>
						<div class="columns small-10 medium-11"> The opportunity to create a national ranking for yourself and your service.</div>
					</div>
					<div class="row mb10">
						<div class="columns small-2 medium-1"><svg class="float-right" width="30" height="30" viewBox="0 0 100 100"><path d="M68.6 36.1L43.5 61.2 32.4 50.1c-0.8-0.8-2-0.8-2.8 0 -0.8 0.8-0.8 2 0 2.8l12.5 12.5c0.4 0.4 0.9 0.6 1.4 0.6s1-0.2 1.4-0.6l26.5-26.5c0.8-0.8 0.8-2 0-2.8S69.4 35.3 68.6 36.1z" style="fill:#3498DB;"/><path d="M50 8C27.2 8 8 27.2 8 50s19.2 42 42 42 42-19.2 42-42S72.8 8 50 8zM50 88c-20.6 0-38-17.4-38-38s17.4-38 38-38 38 17.4 38 38S70.6 88 50 88z" style="fill:#3498DB;"/></svg></div>
						<div class="columns small-10 medium-11">The ability to greatly increase your income from referrals.</div>
					</div>
					<div class="row mb10">
						<div class="columns small-2 medium-1"><svg class="float-right" width="30" height="30" viewBox="0 0 100 100"><path d="M68.6 36.1L43.5 61.2 32.4 50.1c-0.8-0.8-2-0.8-2.8 0 -0.8 0.8-0.8 2 0 2.8l12.5 12.5c0.4 0.4 0.9 0.6 1.4 0.6s1-0.2 1.4-0.6l26.5-26.5c0.8-0.8 0.8-2 0-2.8S69.4 35.3 68.6 36.1z" style="fill:#3498DB;"/><path d="M50 8C27.2 8 8 27.2 8 50s19.2 42 42 42 42-19.2 42-42S72.8 8 50 8zM50 88c-20.6 0-38-17.4-38-38s17.4-38 38-38 38 17.4 38 38S70.6 88 50 88z" style="fill:#3498DB;"/></svg></div>
						<div class="columns small-10 medium-11">Customized training on how to use the Buffini Referral Network to seamlessly send and receive referrals nationwide including:
              <ul>
                <li>How to cultivate out of area referrals</li>
                <li>How to handle an incoming lead</li>
                <li>How to turn an incoming lead into a pillar in your database</li>
              </ul>
						</div>
					</div>
				</div>
			</div>
			<div class="row pt40">
				<div class="column">
					<h5>Questions? Call 1-800-945-3485</h5>
				</div>
			</div>
		</section>

    </div>

</form>

    <asp:Literal ID="litRedirect" runat="server" ></asp:Literal>

<%-- Global Scripts --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="https://members.buffiniandcompany.com/members-area/assets/scripts/global/libraries/foundation.min.js"></script>	
<script src="https://members.buffiniandcompany.com/members-area/assets/scripts/global/global.js"></script>
<script src="//use.typekit.net/vin1ioq.js"></script>
<script>  try { Typekit.load(); } catch (e) { }</script>


</body>
</html>