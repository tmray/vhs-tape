// Simple mobile navigation toggle
(function() {
  'use strict';
  
  function ready(fn) {
    if (document.readyState !== 'loading') {
      fn();
    } else {
      document.addEventListener('DOMContentLoaded', fn);
    }
  }
  
  ready(function() {
    var toggle = document.querySelector('.nav-toggle');
    var navContainer = document.querySelector('.nav-wrapper .nav-container');
    
    if (!toggle || !navContainer) {
      return;
    }
    
    toggle.addEventListener('click', function(e) {
      e.preventDefault();
      var isExpanded = toggle.getAttribute('aria-expanded') === 'true';
      
      // Toggle state
      toggle.setAttribute('aria-expanded', !isExpanded ? 'true' : 'false');
      navContainer.classList.toggle('show');
    });
    
    // Close menu when a link is clicked
    var navLinks = navContainer.querySelectorAll('a');
    navLinks.forEach(function(link) {
      link.addEventListener('click', function() {
        toggle.setAttribute('aria-expanded', 'false');
        navContainer.classList.remove('show');
      });
    });
  });
})();
