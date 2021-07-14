<?php

// Initialize our custom functions
require 'functions/functions-mu.php';
require 'functions/functions-gutenberg.php';
require 'functions/functions-acf.php';
require 'functions/functions-navigation.php';

add_action( 'pre_get_posts', function ( $query ) {
    if ( !is_admin() && $query->is_main_query() ) {
    	if ( is_home() ) {
        	$query->set( 'posts_per_page', -1 );
    	}
    }
});

// Replace Posts label as Nyheder in Admin Panel 

function change_post_menu_label() {
    global $menu;
    global $submenu;
    $menu[5][0] = 'Nyheder';
    $submenu['edit.php'][5][0] = 'Nyheder';
    $submenu['edit.php'][10][0] = 'Add Nyheder';
    echo '';
}
function change_post_object_label() {
        global $wp_post_types;
        $labels = &$wp_post_types['post']->labels;
        $labels->name = 'Nyheder';
        $labels->singular_name = 'Article';
        $labels->add_new = 'Add Article';
        $labels->add_new_item = 'Add Article';
        $labels->edit_item = 'Edit Article';
        $labels->new_item = 'Article';
        $labels->view_item = 'View Article';
        $labels->search_items = 'Search Nyheder';
        $labels->not_found = 'No Nyheder found';
        $labels->not_found_in_trash = 'No Nyheder found in Trash';
}
add_action( 'init', 'change_post_object_label' );
add_action( 'admin_menu', 'change_post_menu_label' );