'use strict';
var kindtand = kindtand || {};

kindtand.navigation = kindtand.navigation || function () {

	function init() {
		const site_nav = document.getElementById('js-site-nav');

		if ( site_nav ) {
			// siteNav(site_nav);
			// sub_menu_toggle(site_nav);
		}
	}

	function siteNav(site_nav) {
		var site_body		= document.body,
			nav_toggle 		= document.getElementById('js-mobile-nav-toggle');

		nav_toggle.addEventListener('click', function(event) {
			event.stopPropagation();

			var btn = event.target,
				site_nav_item = site_nav.querySelectorAll('.site-nav__inner > .menu > .menu-item'),
				i = 0;

			if ( !site_body.classList.contains('nav-active') ) {

				site_body.classList.add('nav-active');

				// Disable scrolling
				site_body.classList.add('no-scroll');
				bodyScrollLock.disableBodyScroll(site_nav);

				function site_nav_item_timeout(i) {
					setTimeout(function() {
						site_nav_item[i].classList.add('visible');
					}, i*50);
				}

				function site_nav_timeout(i) {
					setTimeout(function() {
						site_nav_item_timeout(i)
					}, 200);
				}

				for (i = 0; i < site_nav_item.length; i++) { 
					site_nav_timeout(i);

					var current = site_nav_item[i];

					if ( !current.classList.contains('open') && current.classList.contains('current-menu-ancestor') ) {
						var current_open = current,
							sub_menu = current.querySelector('.sub-menu');
						
						setTimeout(function() {
							sub_menu.style.height = '100%';
							var height = sub_menu.scrollHeight + 'px';
							sub_menu.style.height = '';

							sub_menu.style.height = height;
							current_open.classList.add('open');
						}, 900);
					}
				}

				i = 0;
			} else {
				function site_nav_item_timeout(i) {
					setTimeout(function() {
						site_nav_item[i].classList.remove('visible');
					}, i*50);
				}

				for (i = 0; i < site_nav_item.length; i++) { 
					site_nav_item_timeout(i);

					var current = site_nav_item[i];

					if ( current.classList.contains('open') ) {
						var current_open = current,
							sub_menu = current.querySelector('.sub-menu');
						
						setTimeout(function() {
							sub_menu.style.height = '0px';
							current_open.classList.remove('open');
						}, 1200);
					}
				}
				
				i = 0;

				site_body.classList.remove('nav-active');

				// Re-activate scrolling
				site_body.classList.remove('no-scroll');
				bodyScrollLock.enableBodyScroll(site_nav);
			}
		});
	}

	function sub_menu_toggle(site_nav) {
		var site_nav_item = site_nav.getElementsByClassName('menu-item-has-children');

		if ( site_nav_item ) {
			for (var i = 0; i < site_nav_item.length; i++) {
				var sub_menu_toggle = site_nav_item[i].querySelector('.js-sub-menu-toggle');

				sub_menu_toggle.addEventListener('click', function() {
					var nav_item = this.parentElement,
						sub_menu = nav_item.querySelector('.sub-menu');

					if ( !nav_item.classList.contains('open') ) {
						sub_menu.style.height = '100%';
						var height = sub_menu.scrollHeight + 'px';
						sub_menu.style.height = '';

						sub_menu.style.height = height;
						nav_item.classList.add('open');
					} else {
						sub_menu.style.height = '0px';
						nav_item.classList.remove('open');
					}

				});
			}
		}
	}

	return {
		init : init
	};

}();