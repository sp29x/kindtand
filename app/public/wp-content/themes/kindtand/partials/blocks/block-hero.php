
<div class="site-container">
	<div class="block-hero">
	    <?php
	        $heroTitle = get_field('heroTitle');
	        $heroBackgroundImage = get_field('heroBackgroundImage');
	        $heroVideo = get_field('heroVideo');
	     ?>


	    <?php if( $heroTitle) : ?>
	        title
		<?php endif; ?>

	    <?php if( $heroBackgroundImage) : ?>
	        image
		<?php endif; ?>


	    <?php if( $heroVideo) : ?>
	        <video width="320" height="240" controls>
			  <source src="<?php echo $heroVideo['url']; ?>" type="video/mp4">
			Your browser does not support the video tag.
			</video>
		<?php endif; ?>
	</div>
</div>