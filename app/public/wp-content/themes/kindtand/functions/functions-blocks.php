<?php
// 29x blocks
function kindtand_acf_init() {
	
	// check function exists
	if( function_exists('acf_register_block_type') ) {



		// Block: Service list
		acf_register_block_type(array(
			'name'				=> 'servicelist',
			'title'				=> 'Behandlinger',
			'description'		=> '',
			'render_callback'	=> 'twentyninetimes_blocks',
			'category'			=> 'sncm',
			'supports'			=> array('align' => false),
			'icon'				=> 'welcome-write-blog',
			'keywords'			=> array( 'service', 'behandling', 'produkt' ),
        ));
	
    }
}

// Render
function twentyninetimes_blocks( $block ) {
    $slug = str_replace('acf/', '', $block['name']);
	if( file_exists( get_theme_file_path("/partials/blocks/block-{$slug}.php") ) ) {
        include( get_theme_file_path("/partials/blocks/block-{$slug}.php") );
	}
}
// Init
add_action('acf/init', 'kindtand_acf_init');
?>