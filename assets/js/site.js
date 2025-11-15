(function(){
  function ready(fn){
    if(document.readyState !== 'loading'){ fn(); }
    else { document.addEventListener('DOMContentLoaded', fn); }
  }

  ready(function(){
    var nav = document.querySelector('.site-nav');
    var toggle = document.querySelector('.nav-toggle');
    var menu = document.getElementById('primary-menu');
    if(!nav || !toggle || !menu) return;

    function setOpen(open){
      nav.classList.toggle('nav-open', open);
      toggle.setAttribute('aria-expanded', open ? 'true' : 'false');
      document.body.classList.toggle('no-scroll', open);
    }

    toggle.addEventListener('click', function(){
      var isOpen = nav.classList.contains('nav-open');
      setOpen(!isOpen);
      toggle.classList.toggle('active', !isOpen);
    });

    // Close on Escape
    document.addEventListener('keydown', function(e){
      if(e.key === 'Escape') setOpen(false);
    });

    // Close when clicking a link
    menu.addEventListener('click', function(e){
      if(e.target && e.target.tagName === 'A') {
        setOpen(false);
        toggle.classList.remove('active');
      }
    });

    // Close when clicking outside the nav area on mobile
    document.addEventListener('click', function(e){
      if(!nav.classList.contains('nav-open')) return;
      var withinNav = nav.contains(e.target);
      if(!withinNav) {
        setOpen(false);
        toggle.classList.remove('active');
      }
    });
  });
})();
