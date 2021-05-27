
<?php

/*------------------------------------*\
    ADD SCRIPTS AND STYLES TO THEME
\*------------------------------------*/
// Load scripts
function site_scripts() {
    if ($GLOBALS['pagenow'] != 'wp-login.php' && !is_admin()) {

        // Remove jquery from WP
        wp_deregister_script('jquery');

        // Remove wp block library css
        // wp_deregister_style( 'wp-block-library' );
        // wp_deregister_script( 'wp-embed' );

        wp_register_script('vendor', get_template_directory_uri() . '/__dist/scripts/vendor.min.js', array(), '1.0.0', true); // Custom scripts
        wp_enqueue_script('vendor'); // Enqueue it!

        wp_register_script('master', get_template_directory_uri() . '/__dist/scripts/master.min.js', array(), '1.0.0', true); // Custom scripts
        wp_enqueue_script('master'); // Enqueue it!

    }
}
add_action('wp_enqueue_scripts', 'site_scripts'); // Add Custom Scripts


// Load styles
function site_styles() {
    wp_register_style('master', get_template_directory_uri() . '/__dist/css/master.min.css', array(), '1.0.0', 'all');
    wp_enqueue_style('master'); // Enqueue it!
}
add_action('wp_enqueue_scripts', 'site_styles'); // Add Theme Stylesheet


// Remove the wp-emoji-release script WP inserts by default
remove_action('wp_head', 'print_emoji_detection_script', 7);
remove_action('wp_print_styles', 'print_emoji_styles');



/*------------------------------------*\
	THEME SUPPORT FUNCTIONS
\*------------------------------------*/
if (function_exists('add_theme_support')) {
    // Add Menu Support
    add_theme_support('menus');

    // Add Thumbnail Theme Support
    add_theme_support('post-thumbnails');
}

// Add excerpts to pages
function add_excerpts_to_pages() {
     add_post_type_support( 'page', 'excerpt' );
}
add_action( 'init', 'add_excerpts_to_pages' );
  ?>