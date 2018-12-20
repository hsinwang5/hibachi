<?php get_header(); ?>

<?php while (have_posts()) {
  the_post();
} ?>

<div class="main-intro">
  <h3>Hibachi Lunch Specials</h3>
  <?php while (have_posts()) {
    the_post(); ?>
  <p>
    <?php the_content(); ?>
  </p>
  <?php 
} ?>
</div>

<?php

//custom query - lunch specials only
// $lunchSpecials = new WP_Query(array(
//   'posts_per_page' => -1,
//   'post_type' => 'food',
//   'meta_key' => 'order',
//   'order' => 'ASC',
//   'orderby' => 'meta_value_num',
//   'meta_query' => array(
//     array(
//       'key' => 'category',
//       'value' => 'Lunch'
//     )
//   )
// ));

$lunchSpecials = new WP_Query(array(
  'posts_per_page' => -1,
  'post_type' => 'food',
  'meta_key' => 'category',
  'meta_value' => 'Lunch',
  'meta_query' => array(
    'relation' => 'AND',
    'price_clause' => array(
      'key' => 'price'
    ),
    'order_clause' => array(
      'key' => 'order'
    )
  ),
  'orderby' => array(
    'price_clause' => 'ASC',
    'order_clause' => 'ASC'
  )
));
?>
<div class="menu-item__container">
  <?php
  while ($lunchSpecials->have_posts()) {
    $lunchSpecials->the_post(); ?>
  <div class="menu-item">
    <div class="menu-item__heading js-menu-item__heading">
      <h4 class="menu-item__title">
        <?php the_title() ?>
      </h4>
      <span class="menu-item__price">
        <?php //echo '$' . get_field('price'); ?>
        <i class="fa fa-plus-square js-plus-hook" aria-hidden="true"></i>
        <i class="fa fa-minus-square js-minus-hook inactive" aria-hidden="true"></i>
      </span>
    </div>
    <div class="menu-item__body js-menu-item__body">
      <div>
        <?php the_content(); ?>
      </div>
    </div>
    <div class="menu-item__animation">
    </div>
  </div>
  <?php 
} ?>
  <div class="right-menu"></div>
  <div class="left-menu"></div>
</div>

<?php get_footer(); ?>