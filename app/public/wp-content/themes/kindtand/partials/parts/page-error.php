
<?php
// 404
if ( is_404() ) :
    $pageErrorTitle = get_field('pageErrorHeader', 'option');
    $pageErrorText        = get_field('pageErrorText', 'option');
    $pageErrorButton         = get_field('pageErrorButton', 'option');
?>


<div class="page-error">
    <?php if($pageErrorTitle) : ?>
        <h1 class="page-error__title"><?php echo $pageErrorTitle; ?></h1>
    <?php endif; ?>

    <?php if($pageErrorText) : ?>
        <p class="page-error__text"><?php echo $pageErrorText; ?></p>
    <?php endif; ?>

    <?php if($pageErrorButton) : ?>
        <a href="<?php echo $pageErrorButton['url']; ?>" target="<?php echo $pageErrorButton['target']; ?>" class="btn"><?php echo $pageErrorButton['title']; ?></a>
    <?php endif; ?>
</div>


<?php endif; ?>
