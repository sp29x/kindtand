<?php
    $contactText = get_field('footerContactText', 'option');
    $phone = get_field('footerPhone', 'option');
    $openingHoursText = get_field('footerOpeningHoursText', 'option');
    $openingHours = get_field('footerOpeningHours', 'option');
    $footerAddressText = get_field('footerAddressText', 'option');
    $address = get_field('footerAddress', 'option');
    $googleMapsLink = get_field('footerGoogleMapsLink', 'option');
    $facebookLink = get_field('footerFacebookLink', 'option');
?>


<footer class="site-footer" aria-label="Footer">

    <?php if($facebookLink) : ?>
        <a href="<?php echo $facebookLink['url']; ?>" target="<?php echo $facebookLink['target']; ?>" class="site-footer-some">
            <div class="site-footer-some__text"><?php echo $facebookLink['title']; ?></div>
            <div class="site-footer-some__line"></div>
            <svg class="icon facebook__icon">
                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="<?php echo get_template_directory_uri(); ?>/__dist/icons/icons.svg#facebook-icon"></use>
            </svg>
        </a>
    <?php endif; ?>

    <div class="site-footer-content">
        <div class="site-footer-content__col">
            <h3 class="site-footer-content__title">Kontakt</h3>
            <?php if($contactText) : ?>
                <p class="site-footer-content__text">
                    <?php echo $contactText; ?>
                </p>
            <?php endif; ?>
            <?php if($phone) : ?>
                <div class="site-footer-content__phone">
                    Tlf: <a href="tel:<?php echo $phone ?>"><?php echo $phone; ?></a>
                </div>
            <?php endif; ?>
        </div>
        <div class="site-footer-content__col">
            <h3 class="site-footer-content__title">Åbningstider</h3>
            <?php if($openingHoursText) : ?>
                <p class="site-footer-content__text">
                    <?php echo $openingHoursText; ?>
                </p>
            <?php endif; ?>
            <?php if($openingHours) : ?>
                <div class="site-footer-content__opening-hours">
                    <?php echo $openingHours; ?>
                </div>
            <?php endif; ?>
        </div>
        <div class="site-footer-content__col">
            <h3 class="site-footer-content__title">Adresse</h3>
            <?php if($addressText) : ?>
                <p class="site-footer-content__text">
                    <?php echo $addressText; ?>
                </p>
            <?php endif; ?>
            <?php if ($address) : ?>
                <div class="site-footer-content__address">
                    <?php echo $address; ?><br><br>

                    <?php if($googleMapsLink) : ?>
                        <a href="<?php echo $googleMapsLink['url']; ?>" target="<?php echo $googleMapsLink['target']; ?>" class="site-footer-content__maps"><?php echo $googleMapsLink['title']; ?></a>
                    <?php endif; ?>
                </div>
            <?php endif; ?>

        </div>
    </div>
</footer>