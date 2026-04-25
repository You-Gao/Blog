document.addEventListener("DOMContentLoaded", () => {

    const currentUrl = window.location.href;
    const Url = new URL(currentUrl);
    const firstPath = Url.pathname.split('/')[1]; // e.g. "about"
    console.log(firstPath);

    if (firstPath) {
      const selector = `a[href^="/${firstPath}"], a[href^="${window.location.origin}/${firstPath}"]`;
      const el = document.querySelector(selector);
      if (el) el.classList.add('active');
    }
})
