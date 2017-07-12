  $(document).foundation();
	$(document).ready(function () {
    function inIframe() {
      try {
        if (window.self !== window.top) {
          //IN IFRAME
          $('.iFrameSection').hide();
          window.location = 'login.aspx';
        }
        else {
          //NOT IN IFRAME
        }
      } catch (e) {
        //IN IFRAME
        $('.iFrameSection').hide();
        window.location = 'login.aspx';
      }
    }
    inIframe()

    // Toggle menu expansion when link is clicked on mobile
    $('#crm-menu a').click(function () {
      if ($('[data-responsive-toggle]').is(':visible')) {
        $('#crm-menu').toggle();
      }
    });

    // Type Animation
    $(function () {
      $("#typed").typed({
        stringsElement: $('#typed-strings'),
        typeSpeed: 30,
        startDelay: 700,
        backSpeed: 50,
        backDelay: 500,
        loop: true,
        cursorChar: "|",
        contentType: 'html', // or text
        loopCount: 5 // defaults to false for infinite loop
      });
    });


    // Set src of youtube video iframe
    var setPromoVideoSrc = function () { $('#video iframe').attr('src', 'https://www.youtube.com/embed/tTzWVQs1-8A?rel=0&autoplay=1'); }
    var removePromoVideoSrc = function () { $('#video iframe').attr('src', ''); }

    // Set promo video to autoplay when "watch video" link is clicked
    $('[data-open=video]').on('click', function () {
      setPromoVideoSrc();
    });

    // Stop promo video when modal is closed
    $('#video').on('closed.zf.reveal', function (event) {
      removePromoVideoSrc();
    });

    //Get URL query string
    function getQueryVariable(variable) {
      var query = window.location.search.substring(1);
      var vars = query.split("&");
      for (var i = 0; i < vars.length; i++) {
        var pair = vars[i].split("=");
        if (pair[0] == variable) { return pair[1]; }
      }
      return (false);
    }
    // Show speaker modal if query string variable exists
    var id = getQueryVariable('id');

    var scrollToGetStartedSection = function () {
      var target = $('#get-started');
      if (target.length) {
        $('html, body').animate({
          scrollTop: target.offset().top
        }, 1000);
        return false;
      }
    }

    var toggleFreeTrialForm = function () {
      $('[data-free-trial-form]').fadeToggle();
      $('[data-toggle-free-trial-form]').toggleClass('is-active');
      $('[data-get-started-background]').toggleClass('is-active');
      $('[data-free-trial-form] input:text:visible:first').focus();
    }

    // Toggle Free Trial Form when all free trial buttons are clicked
    $('[data-toggle-free-trial-form]').on('click', function (e) {
      e.preventDefault();
      toggleFreeTrialForm();
    });

    // Execute functions based on query string
    switch (id) {
      case 'free-trial':
        scrollToGetStartedSection();
        toggleFreeTrialForm();
    }

    // Feature List Accordion - For Mobile
    // Toggle Image When List Item is Clicked
    $("[data-mobile-feature]").click(function () {
      var value;
      switch ($("[data-mobile-feature]").index(this)) {
        case 0:
          value = "goals";
          break;
        case 1:
          value = "pac";
          break;
        case 2:
          value = "contacts";
          break;
        case 3:
          value = "pop-by";
          break;
        case 4:
          value = "to-do";
          break;
        case 5:
          value = "calendar";
          break;
        case 6:
          value = "resources";
          break;
      }
      $("[data-mobile-feature-screen]").attr('src', 'assets/images/screens/mobile/' + value + '-skewed.png');
    });


    // Feature List Accordion - for Desktop
    // Toggle Image When List Item is Clicked
    $("[data-desktop-feature]").click(function () {
      var value;
      switch ($("[data-desktop-feature]").index(this)) {
        case 0:
          value = "dashboard";
          break;
        case 1:
          value = "pac";
          break;
        case 2:
          value = "relationships";
          break;
        case 3:
          value = "marketing";
          break;
        case 4:
          value = "business";
          break;
        case 5:
          value = "calendar";
          break;
        case 6:
          value = "groups";
          break;
      }
      $("[data-desktop-feature-screen]").attr('src', 'assets/images/screens/desktop/' + value + '-skewed.png');
    });


    // Feature List Accordion - For Teams
    // Toggle Image When List Item is Clicked
    $("[data-teams-feature]").click(function () {
      var value;
      switch ($("[data-teams-feature]").index(this)) {
        case 0:
          value = "dashboard";
          break;
        case 1:
          value = "activity-report";
          break;
        case 2:
          value = "activity-report";
          break;
        case 3:
          value = "transaction-report";
          break;
        case 4:
          value = "lead-progress-report";
          break;
        case 5:
          value = "contacts";
          break;
        case 6:
          value = "marketing";
          break;
      }
      $("[data-teams-feature-screen]").attr('src', 'assets/images/screens/teams/teams-' + value + '-skewed.jpg');
    });

    // Toggle visibility of content based on date
    $("[data-show-date], [data-hide-date]").each(function () {
      var showDateValue = $(this).data("show-date");
      var hideDateValue = $(this).data("hide-date");
      var showDate = new Date(showDateValue);
      var hideDate = new Date(hideDateValue);
      var today = new Date();
      // Hide all elements with data-show-date and data-hide-date attributes
      $(this).hide();
      // If element only has show-date attribute
      if ($(this).attr('data-show-date')) {
        if (today >= showDate) {
          $(this).show();
        } else {
          $(this).remove();
        }
      }
      // If element only has hide-date attribute
      if ($(this).attr('data-hide-date')) {
        if (today <= hideDate) {
          $(this).show();
        } else {
          $(this).remove();
        }
      }
      // If element has show-date and hide-date attribute
      if ($(this).attr('data-show-date') && $(this).attr('data-hide-date')) {
        if (today >= showDate && today <= hideDate) {
          $(this).show();
        } else {
          $(this).remove();
        }
      }
    });

  });