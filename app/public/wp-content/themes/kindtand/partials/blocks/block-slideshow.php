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
$slideshows = get_field('block_slideshow');
$slides = get_field('blockSlideshowSlideshows');
$slideshowTitle = get_field('blockSlideshowTitle');
$className = 'loop-slideshow';

if( !empty($block['className']) ) {
    $className .= ' ' . $block['className'];
}
if( !empty($block['align']) ) {
    $className .= ' align' . $block['align'];
}
?>

<div id="<?php echo esc_attr($id); ?>" class="<?php echo esc_attr($className); ?>">

    <?php if ( $slideshows ) : ?>

        <h2 class="loop-slideshow__title"><?php echo $servicelistTitle; ?></h2>

        <div class="loop-services-list">

            <?php
                foreach($services as $key => $service) :
                    $serviceId = $service->ID;
                    $serviceName = get_the_title($serviceId);
                    $serviceTitle = get_fields($serviceId)['blockServiceTitle'];
            ?>

                <?php get_template_part('partials/loop/item/item', 'service', $id = $serviceId); ?>

                <?php
                    if($servicelistLink && $key >= 2) {
                        break;
                    }
                ?>

            <?php endforeach; ?>

        </div>

        <?php if($servicelistLink) : ?>
            <a href="<?php echo $servicelistLink['url']; ?>" target="<?php echo $servicelistLink['target']; ?>" class="btn btn--white"><?php echo $servicelistLink['title']; ?></a>
        <?php endif; ?>


	<?php endif; ?>
</div>