function debounce(callback, wait) {
  let timeout = null;
  return (...args) => {
    const next = () => callback(...args);
    clearTimeout(timeout);
    timeout = setTimeout(next, wait);
  };
}

function handleSkillNavToggle() {
  const skillLinks = document.querySelectorAll('[data-skill-group-target]');
  const skillSections = document.querySelectorAll('[data-skill-group]');
  const handleLinkClicks = (e) => {
    e.preventDefault();
    const target = e.target.dataset.skillGroupTarget;
    skillLinks.forEach((link) => link.classList.remove('is-active'));
    skillSections.forEach((section) => section.classList.remove('is-active'));
    document.querySelector(`[data-skill-group-target="${target}"]`).classList.add('is-active');
    document.querySelector(`[data-skill-group="${target}"]`).classList.add('is-active');
  };

  skillLinks.forEach((link) => link.addEventListener('click', handleLinkClicks));
}

function useSmoothScrolling() {
  document.querySelectorAll('a[href^="#"]').forEach((anchor) => {
    if (anchor.hash.length > 2) {
      anchor.addEventListener("click", function (e) {
        e.preventDefault();
        document.querySelector(this.getAttribute("href")).scrollIntoView({
          behavior: "smooth",
        });
      });
    }
  });
}

function handleScrollToTopButton() {

  const btnScrollToTop = document.createElement("button");
  btnScrollToTop.style.display = "none";
  const iconArrow = document.createElement("i");
  const showHeight = 300;

  iconArrow.classList.add("icon-top-arrow");
  btnScrollToTop.appendChild(iconArrow);
  btnScrollToTop.classList.add("btn-scroll-top");
  document.body.appendChild(btnScrollToTop);

  window.onscroll = function() {scrollFunction()};

  function scrollFunction() {
    if (document.body.scrollTop > showHeight || document.documentElement.scrollTop > showHeight) {
      btnScrollToTop.style.display = "flex";
    } else {
      btnScrollToTop.style.display = "none";
    }
  }

  btnScrollToTop.addEventListener("click", function() {
    window.scrollTo({
      top: 0,
      behavior: 'smooth',
    })
  });
}

function handleSetEmail() {
  const emailLink = document.querySelector("[data-part1][data-part2][data-part3]");
  const emailText = document.querySelector("#emailLinkText");
  const attrs = emailLink.dataset;
  setTimeout(() => {
    const emailAddress = `${attrs.part1}@${attrs.part2}.${attrs.part3}`;
    emailLink.setAttribute("href", `mailto:${emailAddress}`);
    emailText.textContent = emailAddress;
  }, 1000);
}

function setCopyrightDate() {
  const copyright = document.querySelector("#copyright");
  if (copyright) {
    const year = document.createTextNode(new Date().getFullYear());
    copyright.appendChild(year);
  }
}

// Invoke global functions
(function (){ 
  handleScrollToTopButton();
  setCopyrightDate();
})();