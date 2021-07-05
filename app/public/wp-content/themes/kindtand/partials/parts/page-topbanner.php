<div class="topbanner" style="background-image: url('<?php echo get_template_directory_uri(); ?>/__dist/images/topbanner-frontpage.png');" id="js-topbanner">
	
</div>



<?php
	$postsPageId;

	if( is_home() && get_option( 'page_for_posts' ) ) { 
		$postsPageId = get_option('page_for_posts');
	}

	$topbannerImage = get_field('topbannerImage', $postsPageId);
	$topbannerTitle = get_field('topbannerTitle');

    $isFrontpageClass = "";

    if(is_front_page()) {
        $isFrontpageClass = "topbanner--frontpage";
    }
?>


<?php if($topbannerImage) : ?>

	TOPBANNER

<div class="topbanner test <?php echo $isFrontpageClass; ?>" style="background-image: url('<?php echo $imageToUse['url']; ?>;" id="js-topbanner">

		<?php if(is_front_page()) : ?>
			<div class="container container-xxl">
				<div class="topbanner-content d-none d-lg-block">
					<div class="topbanner-content__inner">
						<?php if($topbannerTitle) { ?>
							<h1 class="topbanner-content__title"><?php echo $topbannerTitle; ?></h1>
						<?php } ?>
					</div>
				</div>
			</div>
		<?php endif; ?>




</div>

<?php endif; ?>