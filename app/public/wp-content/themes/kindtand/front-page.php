<?php get_header(); ?>

<div class="top-banner">
    <?php
        $topBannerTitle = get_field('topBannerTitle');
        if( $topBannerTitle) {
            // Do something.
            echo $topBannerTitle;
        }
?>
</div>


<h1>
    <?php
        $theTitle = the_title();
        if ($theTitle) {
            echo $theTitle;
        }
    ?>
</h1>

<?php site_nav(); ?>

<?php the_content(); ?>

<?php get_footer(); ?>