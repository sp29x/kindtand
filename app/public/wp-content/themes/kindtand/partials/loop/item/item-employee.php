<?php
    $employeeName = get_the_title($args);
    $employeePosition = get_field('blockEmployeePosition', $args);
    $employeeImage = get_field('blockEmployeeImage', $args);
?>



 <div class="item-employee">
    
    <?php if( $employeeImage ) : ?>
        <figure class="item-employee__image">
            <img src="<?php echo $employeeImage['url']; ?>" alt="<?php echo $employeeImage['alt'] ?>">
        </figure>
    <?php endif; ?>

    <div class="item-employee__content">

        <?php if( $employeeName ) : ?>
            <h4 class="item-employee__name"><?php echo $employeeName; ?></h4>
        <?php endif; ?>

        <?php if( $employeePosition ) : ?>
            <div class="item-employee__position"><?php echo $employeePosition; ?></div>
        <?php endif; ?>

    </div>

</div>