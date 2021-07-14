<?php if ( have_posts() ) : ?>
	<div class="list-<?php echo $post_type; ?>">
		<div class="row">
			<?php while ( have_posts() ) : the_post(); ?>
				
				<?php get_template_part( 'partials/loop/item/item', $post_type ); ?>

			<?php endwhile; ?>
		</div>
	</div>
<?php else : ?>
	
	No <?php echo $post_type; ?>s found..

<?php endif; ?>