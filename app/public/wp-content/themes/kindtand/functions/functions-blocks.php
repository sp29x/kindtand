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



		// Block: Price list
		acf_register_block_type(array(
			'name'				=> 'pricelist',
			'title'				=> 'Prisliste',
			'description'		=> '',
			'render_callback'	=> 'twentyninetimes_blocks',
			'category'			=> 'sncm',
			'supports'			=> array('align' => false),
			'icon'				=> 'money-alt',
			'keywords'			=> array( 'priser', 'prisliste' ),
        ));
	



		// Block: Employee list
		acf_register_block_type(array(
			'name'				=> 'employeelist',
			'title'				=> 'Personaleliste',
			'description'		=> '',
			'render_callback'	=> 'twentyninetimes_blocks',
			'category'			=> 'sncm',
			'supports'			=> array('align' => false),
			'icon'				=> 'admin-users',
			'keywords'			=> array( 'personale', 'medarbejder', 'medarbejderliste', 'personaleliste' ),
        ));


		// Block: Slideshow
		acf_register_block_type(array(
			'name'				=> 'slideshow',
			'title'				=> 'Slideshow',
			'description'		=> '',
			'render_callback'	=> 'twentyninetimes_blocks',
			'category'			=> 'sncm',
			'supports'			=> array('align' => false),
			'icon'				=> 'images-alt',
			'keywords'			=> array( 'slideshow', 'galleri', 'billeder', 'slide' ),
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