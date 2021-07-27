function debounce(callback, wait) {
  let timeout = null;
  return (...args) => {
    const next = () => callback(...args);
    clearTimeout(timeout);
    timeout = setTimeout(next, wait);
  };
}

function useSmoothScrolling() {
  document.querySelectorAll('a[href^="#"]').forEach((anchor) => {
    if (anchor.hash.length > 2) {
      anchor.addEventListener('click', function (e) {
        e.preventDefault();
        document.querySelector(this.getAttribute('href')).scrollIntoView({
          behavior: 'smooth',
        });
      });
    }
  });
}

function highlightNavOnScroll() {
  const nav = document.querySelector('#globalNav');
  const sections = Array.from(nav.children).map((item) => document.querySelector(item.hash));
  const sectionPadding = 200;
  if (document.body.scrollTop === 0) {
    nav.querySelector(`a[href="#portfolio"]`).classList.add('active');
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

(function () {
  useSmoothScrolling();
  highlightNavOnScroll();
})();
