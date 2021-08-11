<?php
/**
 *  Slideshow Block Template.
 *
 * @param   array $block The block settings and attributes.
 * @param   string $content The block inner HTML (empty).
 * @param   bool $is_preview True during AJAX preview.
 * @param   (int|string) $post_id The post ID this block is saved to.
 */
$id = 'slideshow-' . $block['id'];
if( !empty($block['anchor']) ) {
    $id = $block['anchor'];
}
$slideshow = get_field('block_slideshow');
$slides = get_field('blockSlideshowSlides');
$className = 'block-slideshow-wrapper';

if( !empty($block['className']) ) {
    $className .= ' ' . $block['className'];
}
if( !empty($block['align']) ) {
    $className .= ' align' . $block['align'];
}
?>



<div id="<?php echo esc_attr($id); ?>" class="<?php echo esc_attr($className); ?> js-block-slideshow-wrapper">

    <?php if ( $slides ) : ?>

        <div class="block-slideshow js-block-slideshow">

            <?php
                foreach($slides as $key => $slide) :
                    $slideId = $slide['id'];
            ?>

                <?php get_template_part('partials/loop/item/item', 'slide', $slide = $slide); ?>

            <?php endforeach; ?>



        <?php if(count($slides) > 1) : ?>
            <div class="block-slideshow__prev-next js-slideshow-prev-next">
                <svg class="icon arrow-right__icon block-slideshow__slide-arrow block-slideshow__slide-arrow--prev js-slideshow-prev">
                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="<?php echo get_template_directory_uri(); ?>/__dist/icons/icons.svg#arrow-right-icon"></use>
                </svg>

                <svg class="icon arrow-right__icon block-slideshow__slide-arrow block-slideshow__slide-arrow--next js-slideshow-next">
                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="<?php echo get_template_directory_uri(); ?>/__dist/icons/icons.svg#arrow-right-icon"></use>
                </svg>
            </div>
        <?php  endif; ?>

        </div>


	<?php endif; ?>
</div>