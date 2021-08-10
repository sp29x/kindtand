<?php
    $slideshowTitle = get_the_title($args);
    $slideshowTitle = get_field('blockSlideshowTitle', $args);
?>


 <div class="item-slideshow">
    <?php if( $slideshowTitle ) : ?>
        <h3 class="item-slideshow__title"><?php echo $slideshowTitle; ?></h3>
    <?php endif; ?>
</div>