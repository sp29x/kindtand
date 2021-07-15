<?php
    $topbannerImage = get_field('pageTopbannerImage');
    $hasTopbannerClass = '';

    if($topbannerImage) {
        $hasTopbannerClass = 'has-topbanner';
    }
?>

<!doctype html>

<html lang="da">
<head>
    <meta charset="utf-8">

    <title>Kindtand</title>
    <meta name="description" content="Kindtand">
    <meta name="author" content="29x">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php wp_head(); ?>
</head>
<div class="site <?php echo $hasTopbannerClass; ?>">
    <input type="checkbox" id="input-toggle__site-nav" name="input-toggle__site-nav" autocomplete="off" hidden="">

    <?php get_template_part( 'partials/site/site', 'header' ); ?>

        <?php get_template_part( 'partials/parts/page', 'topbanner' ); ?>
    <main class="site-content" role="main">

        <div class="container container-xxl">
