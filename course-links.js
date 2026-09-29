/* Open relative Markdown lessons in the current LiaScript reader.
   Keeps library/weekly links portable between local preview and hosting. */
(() => {
  const update = () => {
    for (const link of document.querySelectorAll('a[data-lia-course="true"]')) {
      const source = new URL(link.getAttribute('href'), location.href);
      if (!/\.md$/i.test(source.pathname)) continue;
      const reader = new URL(location.href);
      reader.search = '?' + source.href;
      reader.hash = '';
      link.href = reader.href;
    }
  };
  let pending = false;
  const schedule = () => {
    if (pending) return;
    pending = true;
    requestAnimationFrame(() => { pending = false; update(); });
  };
  const start = () => {
    update();
    new MutationObserver(schedule).observe(document.body, {childList: true, subtree: true});
  };
  if (document.body) start();
  else document.addEventListener('DOMContentLoaded', start, {once: true});
})();
