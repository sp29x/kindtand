'use strict';
var kindtand = kindtand || {};

kindtand.siteHeader = kindtand.siteHeader || function () {

	const site_header = document.getElementById('js-site-header');
	const site_header_wrapper = document.getElementById('js-site-header-wrapper');

	function init() {

		if ( site_header ) {
			collapseHeader();
			
			window.onscroll = function() {
				collapseHeader();
			};
		}
	}

	function collapseHeader() {
		if(window.scrollY > 80) {
			site_header.classList.add('site-header--collapsed');
			site_header_wrapper.classList.add('site-header__wrapper--collapsed');
		} else {
			site_header.classList.remove('site-header--collapsed')
			site_header_wrapper.classList.remove('site-header__wrapper--collapsed')
		}
	}

	return {
		init : init
	};

}();