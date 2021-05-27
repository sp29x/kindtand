<?php
function cptacf_options_pages() {
	if( function_exists('acf_add_options_page') ) {

		/********************************/
		/***** Generel Option pages *****/
		/********************************/

		acf_add_options_page(array(
			'page_title' 	=> 'Tema Generelle Indstillinger',
			'menu_title'	=> 'Tema Indstillinger',
			'menu_slug' 	=> 'theme-general-settings',
			'capability'	=> 'edit_posts',
			'redirect'		=> false,
			'position' 		=> '3.1'
		));
		
		acf_add_options_sub_page(array(
			'page_title' 	=> 'Tema Header Indstillinger',
			'menu_title'	=> 'Header',
			'parent_slug'	=> 'theme-general-settings',
		));
		
		acf_add_options_sub_page(array(
			'page_title' 	=> 'Tema Footer Indstillinger',
			'menu_title'	=> 'Footer',
			'parent_slug'	=> 'theme-general-settings',
		));



		/*****************************/
		/***** CPT Option pages *****/
		/*****************************/
		// Add content page for all CPTs
		// ACF Custom post type fields (Function originally from https://github.com/Tusko/ACF-CPT-Options-Pages)
		$cptacf_post_types = get_post_types( array(
			'_builtin'    => false,
			'has_archive' => true
		) ); //get post types

		foreach ( $cptacf_post_types as $cpt ) {

			if ( post_type_exists( $cpt ) ) {

				$cptname     = get_post_type_object( $cpt )->labels->name;
				$cpt_post_id = 'cpt_' . $cpt;

				if ( defined( 'ICL_LANGUAGE_CODE' ) ) {
					$cpt_post_id = $cpt_post_id . '_' . ICL_LANGUAGE_CODE;
				}

				$cpt_acf_page = array(
					'page_title'  => sprintf( __( 'Arkivside indhold for "%s"' ), ucfirst( $cptname ) ),
					'menu_title'  => sprintf( __( 'Arkiv Indhold' ), ucfirst( $cptname ) ),
					'parent_slug' => 'edit.php?post_type=' . $cpt,
					'menu_slug'   => $cpt . '-archive',
					'capability'  => 'edit_posts',
					'post_id'     => $cpt_post_id,
					'position'    => false,
					'icon_url'    => false,
					'redirect'    => false
				);

				acf_add_options_page( $cpt_acf_page );

			} // end if

		}
		
	} else { //activation warning
		add_action( 'admin_notices', 'cptacf_admin_error_notice' );
	}
}
add_action( 'init', 'cptacf_options_pages', 99 ); // ACF Custom post type fields