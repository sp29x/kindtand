<?php /* Template Name: News */ ?>


<?php get_header(); ?>

<?php site_nav(); ?>

<h1>
    <?php
        $theTitle = the_title();
        if ($theTitle) {
            echo $theTitle;
        }
    ?>
</h1>

 <?php the_content() ?>


<?php get_footer(); ?>