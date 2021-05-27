<?php
    $topBannerTitle = get_field('topBannerTitle');
    $topBannerText = get_field('topBannerText');
    $topBannerLink = get_field('topBannerLink');
    $topBannerImage = get_field('topBannerImage');
    
    if( $topBannerTitle) {
        echo $topBannerTitle;
        echo "<br>";
        echo "<br>";

    }
    
    if( $topBannerText) {
        echo $topBannerText;
        echo "<br>";
        echo "<br>";

    }
    
    if( $topBannerLink ) {
        $link_url = $topBannerLink['url'];
        $link_title = $topBannerLink['title'];
        $link_target = $topBannerLink['target'] ? $topBannerLink['target'] : '_self';


        echo $link_url;
        echo "<br>";
        echo $link_title;
        echo "<br>";
        echo $link_target;
        echo "<br>";
        echo "<br>";
    }
    

    if( $topBannerImage) {
        echo $topBannerImage;
    }
?>