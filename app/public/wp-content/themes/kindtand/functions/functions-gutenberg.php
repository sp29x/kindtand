<?php
// Editor styles
function kindtand_block_editor_styles() {
    wp_enqueue_style( 'kindtand-editor-styles', get_theme_file_uri( '/__dist/admin/master-blocks.min.css' ), false, '1.0', 'all' );
}
add_action( 'enqueue_block_editor_assets', 'kindtand_block_editor_styles' );


// Replacing button styles
add_filter( 'render_block', function( $block_content, $block ) {
	$block_content = str_replace('wp-block-button__link', 'btn', $block_content);
	return $block_content;
}, 5, 2 );


// Register block styles
add_action('init', function() {
	register_block_style('core/spacer', [
		'name' 	=> 'spacer-mobile',
		'label' => __('Mobile/Tablet Only', 'kindtand')
	]);

	register_block_style('core/spacer', [
		'name' 	=> 'spacer-desktop',
		'label' => __('Desktop Only', 'kindtand')
	]);
});

add_theme_support( 'align-wide' );
add_theme_support( 'editor-styles' );
add_theme_support( 'custom-spacing' );
add_theme_support( 'responsive-embeds' );


// Import all blocks from functions file
require 'functions-blocks.php';
?>