'use strict';
var kindtand = kindtand || {};

kindtand.slideshow = kindtand.slideshow || function () {

	function init() {
		const slideshowWrappers = document.getElementsByClassName('js-block-slideshow-wrapper');
		const slideshows = document.getElementsByClassName('js-block-slideshow');

		if(slideshows.length > 0) {
			for (var i = slideshows.length - 1; i >= 0; i--) {
				const currentSlideshow = slideshows[i];

				var flkty = new Flickity( currentSlideshow, {
				  // options
				  cellAlign: 'left',
				  cellSelector: '.item-slide',
				  pageDots: false,
				  prevNextButtons: false,
				  contain: true,
				  adaptiveHeight: false,
				  wrapAround: true,
				  contain: true,
				  resize: true
				});




				/* Setup prev/next arrows (if more than 1 slide) */
				if(slideshows.length > 0) {
					setupPrevNextArrows(currentSlideshow, flkty);
				}
			}

		}
	}

	function setupPrevNextArrows(currentSlideshow, flkty) {
		const prevNextButtons = currentSlideshow.getElementsByClassName('js-slideshow-prev-next');

		if(prevNextButtons.length > 0) {
			const prevButton = prevNextButtons[0].getElementsByClassName('js-slideshow-prev');
			const nextButton = prevNextButtons[0].getElementsByClassName('js-slideshow-next');
			
			prevButton[0].addEventListener('click', function() {
				console.log('click prev');
				flkty.previous();
			});

			nextButton[0].addEventListener('click', function() {
				console.log('click next');
				flkty.next();
			});
		}

	}


	return {
		init : init
	};

}();