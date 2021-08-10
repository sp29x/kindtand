<?php
    $topbannerImage = get_field('pageTopbannerImage');
    $hasTopbannerClass = '';
    $cookieScript = get_field('cookieScript', 'option');
    $googleTagManagerId = get_field('googleTagManagerId', 'option');
    $googleAnalyticsId = get_field('googleAnalyticsId', 'option');

    if($topbannerImage) {
        $hasTopbannerClass = 'has-topbanner';
    }
?>

<!doctype html>

<html lang="da">
<head>
    <meta charset="utf-8">

    <!-- Google Analytics -->
    <?php if($googleAnalyticsId) : ?>
        <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

        ga('create', '<?php echo $googleAnalyticsId; ?>', 'auto');
        ga('send', 'pageview');
        </script>
    <?php endif; ?>
    <!-- End Google Analytics -->

    <title>Kindtand</title>
    <meta name="description" content="Kindtand">
    <meta name="author" content="29x">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php wp_head(); ?>

    <!-- Cookie popup -->
    <?php
        if($cookieScript) {
          echo $cookieScript;
        }
    ?>


    <!-- Google Tag Manager -->
    <?php if($googleTagManagerId) : ?>
        <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
        new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
        j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
        'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
        })(window,document,'script','dataLayer','<?php echo $googleTagManagerId; ?>');</script>
    <?php endif; ?>
    <!-- End Google Tag Manager -->
</head>
<body>


<!-- Google Tag Manager (noscript) -->
<?php if($googleTagManagerId) : ?>
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=<?php echo $googleTagManagerId; ?>"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<?php endif; ?>
<!-- End Google Tag Manager (noscript) -->

<div class="site <?php echo $hasTopbannerClass; ?>">
    <input type="checkbox" id="input-toggle__site-nav" name="input-toggle__site-nav" autocomplete="off" hidden="">

    <?php get_template_part( 'partials/site/site', 'header' ); ?>

        <?php get_template_part( 'partials/parts/page', 'topbanner' ); ?>
    <main class="site-content" role="main">

        <div class="container container-xxl">



        <?php get_template_part( 'partials/parts/page', 'error' ); ?>
