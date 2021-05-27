<?php
// 29x blocks
function kindtand_acf_init() {
	
	// check function exists
	if( function_exists('acf_register_block_type') ) {

		
	
    }
}

// Render
function kindtand_blocks( $block ) {
    $slug = str_replace('acf/', '', $block['name']);
	if( file_exists( get_theme_file_path("/partials/blocks/block-{$slug}.php") ) ) {
        include( get_theme_file_path("/partials/blocks/block-{$slug}.php") );
	}
}
// Init
add_action('acf/init', 'kindtand_acf_init');
?>