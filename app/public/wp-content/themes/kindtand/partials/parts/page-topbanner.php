<?php

$value = get_field( "text_field" );

	$topbannerImage = get_field('pageTopbannerImage');
	$topbannerVideo = get_field('pageTopbannerVideo');
	$topbannerTitle = get_field('pageTopbannerTitle');

    $isFrontpageClass = "";

    if(is_front_page()) {
        $isFrontpageClass = "topbanner--frontpage";
    }
?>


<?php if( $topbannerImage or $topbannerVideo ) : ?>
	
		<header class="topbanner <?php echo $isFrontpageClass; ?>" <?php if(!$topbannerVideo) : ?> style="background-image: url('<?php echo $topbannerImage['url']; ?>');" <?php endif; ?>>
			<?php if($topbannerVideo) : ?>
				<video nocontrols autoplay muted loop>
					<source src="<?php echo $topbannerVideo['url']; ?>" type="video/mp4">
					<!-- <source src="movie.ogg" type="video/ogg"> -->
					Your browser does not support the video tag.
				</video>
			<?php endif; ?>

			<?php if(is_front_page()) : ?>
				<div class="topbanner-content">
					<?php if($topbannerTitle) : ?>
						<h1 class="topbanner-content__title"><?php echo $topbannerTitle ?></h1>
					<?php endif; ?>

					<a href="" class="topbanner-content__video-link">

						<svg class="icon arrow-right__icon">
			                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="<?php echo get_template_directory_uri(); ?>/__dist/icons/icons.svg#arrow-right-icon"></use>
			            </svg>
			            <div class="topbanner-content__video-link-text">Lær os at kende</div>
					</a>
				</div>
			<?php endif; ?>
		</header>

<?php endif; ?>