'use strict';
/*
* Use this file to call functions in other files, on document ready, window.resize etc.
*/

var kindtand = kindtand || {};

// Document ready
document.addEventListener('DOMContentLoaded', function(){

    setTimeout(function() {
        svg4everybody(); // Fix SVG spritemap in IE/Edge
    });

    kindtand.navigation.init();
    kindtand.siteHeader.init();
    
});


