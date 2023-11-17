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

  var btnScrollToTop = document.createElement("button");
  btnScrollToTop.style.display = "none";
  var iconArrow = document.createElement("i");
  var showHeight = 300;

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
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
  })
}

function highlightNavOnScroll() {
  const nav = document.querySelector('#globalNav');
  const sections = Array.from(nav.children).map((item) => document.querySelector(item.hash));
  const sectionPadding = 200;
  if (document.body.scrollTop === 0) {
    nav.querySelector(`a[href="#work"]`).classList.add('active');
  }
  function handleScroll() {
    let fromTop = window.scrollY + nav.clientHeight + sectionPadding;
    let visibleSection;
    if (window.innerHeight + window.scrollY >= document.body.offsetHeight - 100) {
      visibleSection = sections[sections.length - 1];
    } else {
      visibleSection = sections.find((section) => section.offsetTop + section.clientHeight > fromTop);
    }
    Array.from(nav.querySelectorAll('a')).forEach((link) => link.classList.remove('active'));
    document.querySelector(`a[href="#${visibleSection.id}"]`).classList.add('active');
  }
  window.addEventListener('scroll', debounce(handleScroll, 20));
}

function handleSetEmail() {
  const links = document.querySelectorAll("[data-part1][data-part2][data-part3]");
  for (const link of links) {
    const attrs = link.dataset;
    setTimeout(() => {
      link.setAttribute("href", `mailto:${attrs.part1}@${attrs.part2}.${attrs.part3}`);
    }, 2000);
  }
}

function setCopyrightDate() {
  const copyright = document.querySelector("#copyright");
  if (copyright) {
    var year = document.createTextNode(new Date().getFullYear());
    copyright.appendChild(year);
  }
}

// Invoke global functions
(function (){ 
  handleScrollToTopButton();
  setCopyrightDate();
})();