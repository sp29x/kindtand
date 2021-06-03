<?php
/********************************/
/********** Site Menus **********/
/********************************/

// Register WP Navigations
function register_wp_navigations() {
    register_nav_menus(
        array( // Using array to specify more menus if needed
            'site-nav' => __('Site Navigation'),
            'footer-nav' => __('Footer Navigation')
        )
    );
}
add_action('init', 'register_wp_navigations'); // Add Menu


// Add site navigation
function site_nav() {
	wp_nav_menu(
	array(
		'theme_location'  => 'site-nav',
		'menu'            => '',
		'container'       => 'div',
		'container_class' => 'menu-{menu slug}-container',
		'container_id'    => '',
		'menu_class'      => 'menu',
		'menu_id'         => '',
		'echo'            => true,
		'fallback_cb'     => 'wp_page_menu',
		'before'          => '',
		'after'           => '',
		'link_before'     => '',
		'link_after'      => '',
		'items_wrap'      => '<ul class="site-nav">%3$s</ul>',
		'depth'           => 0
		)
	);
}