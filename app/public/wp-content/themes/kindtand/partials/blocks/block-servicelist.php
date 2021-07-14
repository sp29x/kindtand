<?php
/**
 *  Service list Block Template.
 *
 * @param   array $block The block settings and attributes.
 * @param   string $content The block inner HTML (empty).
 * @param   bool $is_preview True during AJAX preview.
 * @param   (int|string) $post_id The post ID this block is saved to.
 */
$id = 'servicelist-' . $block['id'];
if( !empty($block['anchor']) ) {
    $id = $block['anchor'];
}
$servicelists = get_field('block_servicelist');
$services = get_field('blockServicelistServices');
$servicesTitle = get_field('blockServiceslistTitle');
$servicesSeeAllText = get_field('blockServicelistSeeAllText');
$className = 'loop-service';

if( !empty($block['className']) ) {
    $className .= ' ' . $block['className'];
}
if( !empty($block['align']) ) {
    $className .= ' align' . $block['align'];
}
?>


<div id="<?php echo esc_attr($id); ?>" class="<?php echo esc_attr($className); ?>">
    <?php if ( $services ) : ?>

        <h2 class="loop-service__title"><?php echo $servicesTitle; ?></h2>

        <div class="loop-services-list">

            <?php foreach( $services as $service ):
                $serviceId = $service->ID;
                $serviceName = get_the_title($serviceId);
                $serviceTitle = get_fields($serviceId)['blockServiceTitle'];
            ?>

                <?php get_template_part('partials/loop/item/item', 'service', $id = $serviceId); ?>

            <?php endforeach; ?>

        </div>

        <?php if($servicesSeeAllText) : ?>
            <button class="btn btn--white"><?php echo $servicesSeeAllText; ?></button>
        <?php endif; ?>


	<?php endif; ?>
</div>