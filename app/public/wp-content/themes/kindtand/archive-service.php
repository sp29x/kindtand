<?php get_header(); ?>

<?php get_template_part( 'partials/parts/page', 'header' ); ?>

archive service

<?php
if ( have_posts() ) : ?>
    <div class="wp-block-group alignwide">
        <div class="loop-service">
            <?php while ( have_posts() ) : the_post(); ?>
                <?php get_template_part('partials/loop/item/item', 'service'); ?>
            <?php endwhile; ?>
        </div>
    </div>
<?php endif; ?>

behandlinger
<?php get_footer(); ?>