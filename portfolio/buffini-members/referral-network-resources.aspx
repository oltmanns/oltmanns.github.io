<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="referral-network-resources.aspx.vb" Inherits="ProvidenceSystems.referral_network_resources" %>

<!DOCTYPE html>
<html class="no-js" lang="en">

<head id="Head1" runat="server">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=8, IE=9, IE=10, IE11, IE=edge, chrome=1" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="robots" content="noindex, nofollow">
  <link rel="stylesheet" href="<%=Page.ResolveUrl("~/members-area/assets/styles/css/global.min.css")%>" type="text/css">
  <%--Google Tag Manager (Includes Analytics)--%>
  <script>(function(w, d, s, l, i) {
          w[l] = w[l] || []; w[l].push({ 'gtm.start':
  new Date().getTime(), event: 'gtm.js'
          }); var f = d.getElementsByTagName(s)[0],
  j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.async = true; j.src = 'https://www.googletagmanager.com/gtm.js?id=' + i + dl; f.parentNode.insertBefore(j, f);
      })(window, document, 'script', 'dataLayer', 'GTM-WMSKGL');</script>
</head>

<body style="background:#f5f5f5;">
<form id="form1" runat="server">

<!-- Top Bar -->
<section>
	<div class="top-bar">
		<div class="row">
			<div class="columns small-12 medium-8 text-center medium-text-left">
				<img src="assets/images/logos/buffini-referral-network.png" class="mt20 mb20" />
			</div>
			<div class="columns small-12 medium-4 text-center medium-text-right">
				<h3 class="mt30">Resources</h3>
			</div>
		</div>
	</div>
</section>

<section class="pt80 pb20">
	<div class="row">
		<div class="columns medium-6 text-center medium-text-left">
      <h3>Marketing Materials</h3>
      <p>Professionally designed marketing pieces that help you go from local agent to national agent.</p>
      <a href="#" class="button secondary hollow mb40">Coming Soon</a>
    </div>
		<div class="columns medium-6 text-center medium-text-right">
			<img src="assets/images/thumbnails/referral-network/resource-marketing.jpg" width="400" />
		</div>  
	</div>
</section>
<hr />
<section class="pt20 pb20">
	<div class="row">
		<div class="columns medium-6 text-center medium-text-left">
			<h3>Training Videos</h3>
      <p>Practical and tactical trainings to help you better use the Buffini Referral Network.</p>
		  <a href="https://buffiniandcompany.webex.com/buffiniandcompany/lsr.php?RCID=3ea7ebdb91d3dfe34e303f7ebf741d67" class="button mb40" target="_blank">Watch Video</a>
    </div>
    <div class="columns medium-6 text-center medium-text-right">
      <a href="https://buffiniandcompany.webex.com/buffiniandcompany/lsr.php?RCID=3ea7ebdb91d3dfe34e303f7ebf741d67" target="_blank"><img src="assets/images/thumbnails/referral-network/video-dave-mcghee.jpg" width="400" /></a>
    </div>
	</div>
</section>
<hr />
<section class="pt20 pb20">
	<div class="row">
		<div class="column medium-6 text-center medium-text-left">
			<h3>Additional Information</h3>
			<a href="assets/documents/referral-network/BRN_FAQ.pdf" target="_blank">View FAQ </a>
      <hr class="mt10 mb10" />
      <a href="assets/documents/referral-network/BRN_Flyer.pdf" target="_blank">Download Flyer</a>
      <hr class="mt10 mb10" />
      <a href="assets/documents/referral-network/BRN_Infographic.pdf" target="_blank">Download Infographic</a>
      <hr class="mt10 mb10" />
      For technical support, call <span style="white-space:nowrap;">800-945-3485 x 2104</span>
      <hr class="mt10 mb10" />
      For referrals going out of the USA, call <span style="white-space:nowrap;">800-945-3485 x 3333</span>
      <hr class="mt10 mb10" />
		</div>
		<div class="column medium-6 text-center medium-text-right hide-for-small-only">
			<img src="assets/images/thumbnails/referral-network/questions.jpg" width="400" />
		</div>
	</div>
</section>
<hr />
<section>
	<div class="row pt20 pb20">
		<div class="column">
			<div class="footer-copyright">
				<span>&copy; <script>document.write((new Date()).getFullYear())</script> Buffini &amp; Company</span>
			</div>
			<ul class="inline-list footer-links">
				<li><a href="http://www.buffiniandcompany.com/conditions-of-use.aspx">Terms of Use</a></li>
				<li><a href="http://www.buffiniandcompany.com/privacy-policy.aspx">Privacy</a></li>
				<li><a href="http://www.buffiniandcompany.com/company-policies.aspx">Policies</a></li>
			</ul>
		</div>
	</div>		
</section>

<%--<div class="reveal" id="modalVideo" data-reveal>
  <h3>Training</h3>
  <img src="assets/images/thumbnails/referral-network/video-dave-mcghee.jpg" width="640" />
  <button class="close-button" data-close aria-label="Close modal" type="button">
    <span aria-hidden="true">&times;</span>
  </button>
</div>--%>

</form>

<%-- Global Scripts --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="https://members.buffiniandcompany.com/members-area/assets/scripts/global/libraries/foundation.min.js"></script>	
<script src="https://members.buffiniandcompany.com/members-area/assets/scripts/global/global.js"></script>
<script src="//use.typekit.net/vin1ioq.js"></script>
<script>  try { Typekit.load(); } catch (e) { }</script>


</body>
</html>