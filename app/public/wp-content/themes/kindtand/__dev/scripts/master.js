'use strict';
/*
* Use this file to call functions in other files, on document ready, window.resize etc.
*/

var forsyningsservice = forsyningsservice || {};

// Document ready
document.addEventListener('DOMContentLoaded', function(){

    setTimeout(function() {
        svg4everybody(); // Fix SVG spritemap in IE/Edge
    });

    forsyningsservice.navigation.init();
    
});


