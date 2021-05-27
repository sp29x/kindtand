
<?php get_header(); ?>

<?php site_nav(); ?>

 <?php


if ( have_posts() ) : ?>

    <?php while ( have_posts() ) : the_post(); ?>

        <div id="parent-<?php the_ID(); ?>" class="parent-page">

            <h1><a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>">
            	<?php echo get_the_title(); ?></a></h1>

        </div>

    <?php endwhile; ?>

<?php endif; ?>

<?php get_footer(); ?>