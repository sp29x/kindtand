<?php
    $priceTitle = get_the_title($args);
    $priceDescription = get_field('blockPriceDescription', $args);
    $pricePrice = get_field('blockPricePrice', $args);
?>


 <div class="item-price">
    <?php if( $priceDescription ) : ?>
        <div class="item-price__description"><?php echo $priceDescription; ?></div>
    <?php endif; ?>

    <?php if( !$priceDescription && $priceTitle) : ?>
        <div class="item-price__description"><?php echo $priceTitle; ?></div>
    <?php endif; ?>

    
    <?php if( $pricePrice ) : ?>
        <div class="item-price__price">Kr. <?php echo $pricePrice; ?>,-</div>
    <?php endif; ?>
</div>