<?php
/**
 *  Employee list Block Template.
 *
 * @param   array $block The block settings and attributes.
 * @param   string $content The block inner HTML (empty).
 * @param   bool $is_preview True during AJAX preview.
 * @param   (int|string) $post_id The post ID this block is saved to.
 */
$id = 'employeelist-' . $block['id'];
if( !empty($block['anchor']) ) {
    $id = $block['anchor'];
}
$empoloyeelists = get_field('block_employeelist');
$employees = get_field('blockEmployeelistEmployees');
$className = 'loop-employee';

if( !empty($block['className']) ) {
    $className .= ' ' . $block['className'];
}
if( !empty($block['align']) ) {
    $className .= ' align' . $block['align'];
}
?>




<div id="<?php echo esc_attr($id); ?>" class="<?php echo esc_attr($className); ?>">
    <?php if ( $employees ) : ?>


        <?php foreach( $employees as $employee ):
            $employeeId = $employee->ID;
            $employeePosition = get_fields($employeeId)['blockEmployeePosition'];
            $employeeImage = get_fields($employeeId)['blockEmployeeImage'];
        ?>

            <?php get_template_part('partials/loop/item/item', 'employee', $id = $employeeId); ?>

        <?php endforeach; ?>


    <?php endif; ?>
</div>