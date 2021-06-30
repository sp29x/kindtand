<?php
    $siteHeaderBookLink = get_field('siteHeaderBookLink', 'option');
?>
                    
    <div class="site-header">
        <div class="site-header__wrapper">
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
        <!-- <div id="js-site-search" class="site-search">
            <div class="container">
                <div class="site-search__inner">
                    <form class="site-search-form" method="get" action="" role="search">
                        <input class="site-search-form__input" id="js-site-search-input" type="search" name="s" placeholder="Søg..." required="">
                        <div class="site-search-form__actions">
                            <button class="site-search-form__actions-submit button" type="submit">
                                <svg class="icon">
                                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="<?php echo get_template_directory_uri(); ?>/__dist/icons/icons.svg#search"></use>
                                </svg>
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div> -->
    </div>
