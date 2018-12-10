<?php

get_header();

while (have_posts()) {
  the_post();

  ?>

<p>
  <?php get_the_title(); ?>
</p>
<p>
  <?php echo get_the_title(); ?>
</p>
<p>
  <?php echo get_the_title(); ?>
</p>
<p>
  <?php echo get_the_title(); ?>
</p>
<p>
  <?php echo get_the_title(); ?>
</p>
<p>
  <?php the_content(); ?>
</p>

<?php 
} ?>



<?php get_footer(); ?>