<?php
    $serviceTitle = get_the_title($args);
    $serviceText = get_field('blockServiceText', $args);
    $serviceLink = get_field('blockServiceLink', $args);
?>


 <div class="item-service">
    <?php if( $serviceTitle ) : ?>
        <h3 class="item-service__title"><?php echo $serviceTitle; ?></h3>
    <?php endif; ?>
    <?php if( $serviceText ) : ?>
        <p class="item-service__text"><?php echo $serviceText; ?></p>
    <?php endif; ?>
    <?php if( $serviceLink ) : ?>
        <a href="<?php echo $serviceLink['url']; ?>" target="<?php echo $serviceLink['target']; ?>" class="item-service__link"><?php echo $serviceLink['title']; ?></a>
    <?php endif; ?>
</div>