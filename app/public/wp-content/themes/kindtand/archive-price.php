<?php get_header(); ?>

<?php get_template_part( 'partials/parts/page', 'header' ); ?>

archive price

<?php
if ( have_posts() ) : ?>
    <div class="wp-block-group alignwide">
        <div class="loop-price">
            <?php while ( have_posts() ) : the_post(); ?>
                <?php get_template_part('partials/loop/item/item', 'price'); ?>
            <?php endwhile; ?>
        </div>
    </div>
<?php endif; ?>

priser
<?php get_footer(); ?>