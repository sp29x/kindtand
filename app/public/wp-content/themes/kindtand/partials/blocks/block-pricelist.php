<?php
/**
 *  Pricelist Block Template.
 *
 * @param   array $block The block settings and attributes.
 * @param   string $content The block inner HTML (empty).
 * @param   bool $is_preview True during AJAX preview.
 * @param   (int|string) $post_id The post ID this block is saved to.
 */
$id = 'pricelist-' . $block['id'];
if( !empty($block['anchor']) ) {
    $id = $block['anchor'];
}
$pricelists = get_field('block_pricelist');
$prices = get_field('blockPricelistPrices');
$pricelistTitle = get_field('blockPricelistTitle');

$className = 'loop-price';

if( !empty($block['className']) ) {
    $className .= ' ' . $block['className'];
}
if( !empty($block['align']) ) {
    $className .= ' align' . $block['align'];
}
?>


<div id="<?php echo esc_attr($id); ?>" class="<?php echo esc_attr($className); ?>">
    <?php if ( $prices ) : ?>

        <h2 class="loop-price__title"><?php echo $pricelistTitle; ?></h2>

        <div class="loop-prices-list">

            <?php
                foreach($prices as $key => $price) :
                    $priceId = $price->ID;
                    $priceDescription = get_fields($priceId)['blockPriceDescription'];
            ?>

                <?php get_template_part('partials/loop/item/item', 'price', $id = $priceId); ?>

            <?php endforeach; ?>

        </div>


    <?php endif; ?>
</div>