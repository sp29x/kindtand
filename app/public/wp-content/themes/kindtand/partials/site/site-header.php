<?php
    $siteHeaderBookLink = get_field('siteHeaderBookLink', 'option');
?>
                    
    <div class="site-header" id="js-site-header">
        <div class="site-header__wrapper" id="js-site-header-wrapper">
            <div class="container container-xxl">
                <div class="site-header__inner">
                    <a href="/" class="logo" aria-label="Home link" role="link">
                        <img src="<?php echo get_template_directory_uri(); ?>/__dist/images/logo.svg"/>
                    </a>
                    <div class="site-header__action-wrapper">
                        <nav id="js-site-nav" class="site-nav" role="navigation">
                            <div class="site-nav__inner">
                                <?php site_nav(); ?>
                            </div>
                        </nav>
                        <div class="header-actions">

                            <?php if($siteHeaderBookLink) : ?>
                                <a href="<?php echo $siteHeaderBookLink['url']; ?>" target="<?php echo $siteHeaderBookLink['target']; ?>" class="btn header-action header-action--book">
                                    <?php echo $siteHeaderBookLink['title']; ?>
                                </a>
                            <?php endif; ?>
                            <label id="js-mobile-nav-open" class="site-nav-open header-action header-action--mobile-menu" for="input-toggle__site-nav">
                                <span class="site-nav-open__icon">
                                    <i class="site-nav-open__icon-inner"></i>
                                </span>
                            </label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
