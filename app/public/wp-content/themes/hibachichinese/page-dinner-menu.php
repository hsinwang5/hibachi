<?php get_header(); ?>

<?php while (have_posts()) {
  the_post();
} ?>

<div class="main-intro">
  <h3>Hibachi Dinner Menu</h3>
  <?php while (have_posts()) {
    the_post(); ?>
  <p>
    <?php the_content(); ?>
  </p>
  <?php 
} ?>
</div>

<?php
//-----------------------------------------------------------------------------------
$appetizer = new WP_Query(array(
  'posts_per_page' => -1,
  'post_type' => 'dinner',
  'meta_key' => 'category-dinner',
  'meta_value' => 'appetizer',
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
<div class="dinner-menu__container"></div>
<div class="dinner-menu">
  <div class="dinner-menu__title js-dinner-menu__title-hook">Appetizers
    <i class="fa fa-chevron-circle-right" aria-hidden="true"></i>
  </div>
  <div class="dinner-menu__main dinner-menu__main--blue">
    <?php
  //dinner mini-containers, all contained in dinner-menu
    while ($appetizer->have_posts()) {
      $appetizer->the_post(); ?>
    <div class="menu-item">
      <div class="menu-item__heading js-menu-item__heading">
        <h4 class="menu-item__title">
          <?php the_title() ?>
        </h4>
        <span class="menu-item__price">
          <?php echo '$' . get_field('price'); ?>
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
  </div>
</div>

<?php
//-----------------------------------------------------------------------------------
$soup = new WP_Query(array(
  'posts_per_page' => -1,
  'post_type' => 'dinner',
  'meta_key' => 'category-dinner',
  'meta_value' => 'soup',
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

<div class="dinner-menu">
  <div class="dinner-menu__title js-dinner-menu__title-hook">Soups
    <i class="fa fa-chevron-circle-right" aria-hidden="true"></i>
  </div>
  <div class="dinner-menu__main dinner-menu__main--maroon">
    <?php
  //dinner mini-containers, all contained in dinner-menu
    while ($soup->have_posts()) {
      $soup->the_post(); ?>
    <div class="menu-item">
      <div class="menu-item__heading js-menu-item__heading">
        <h4 class="menu-item__title">
          <?php the_title() ?>
        </h4>
        <span class="menu-item__price">
          <?php echo '$' . get_field('price'); ?>
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
  </div>
</div>

<?php
//-----------------------------------------------------------------------------------
$hibachi = new WP_Query(array(
  'posts_per_page' => -1,
  'post_type' => 'dinner',
  'meta_key' => 'category-dinner',
  'meta_value' => 'Hibachi',
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

<div class="dinner-menu">
  <div class="dinner-menu__title js-dinner-menu__title-hook">Hibachi
    <i class="fa fa-chevron-circle-right" aria-hidden="true"></i>
  </div>
  <div class="dinner-menu__main dinner-menu__main--black">
    <?php
  //dinner mini-containers, all contained in dinner-menu
    while ($hibachi->have_posts()) {
      $hibachi->the_post(); ?>
    <div class="menu-item">
      <div class="menu-item__heading js-menu-item__heading">
        <h4 class="menu-item__title">
          <?php the_title() ?>
        </h4>
        <span class="menu-item__price">
          <?php echo '$' . get_field('price'); ?>
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
  </div>
</div>

<?php
//-----------------------------------------------------------------------------------
$specials = new WP_Query(array(
  'posts_per_page' => -1,
  'post_type' => 'dinner',
  'meta_key' => 'category-dinner',
  'meta_value' => 'specials',
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

<div class="dinner-menu">
  <div class="dinner-menu__title js-dinner-menu__title-hook">Specials
    <i class="fa fa-chevron-circle-right" aria-hidden="true"></i>
  </div>
  <div class="dinner-menu__main dinner-menu__main--purple">
    <?php
  //dinner mini-containers, all contained in dinner-menu
    while ($specials->have_posts()) {
      $specials->the_post(); ?>
    <div class="menu-item">
      <div class="menu-item__heading js-menu-item__heading">
        <h4 class="menu-item__title">
          <?php the_title() ?>
        </h4>
        <span class="menu-item__price">
          <?php echo '$' . get_field('price'); ?>
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
  </div>
</div>

<?php
//-----------------------------------------------------------------------------------
$chickenDinner = new WP_Query(array(
  'posts_per_page' => -1,
  'post_type' => 'dinner',
  'meta_key' => 'category-dinner',
  'meta_value' => 'Chicken',
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

<div class="dinner-menu">
  <div class="dinner-menu__title js-dinner-menu__title-hook">Chicken
    <i class="fa fa-chevron-circle-right" aria-hidden="true"></i>
  </div>
  <div class="dinner-menu__main dinner-menu__main--green">
    <?php
  //dinner mini-containers, all contained in dinner-menu
    while ($chickenDinner->have_posts()) {
      $chickenDinner->the_post(); ?>
    <div class="menu-item">
      <div class="menu-item__heading js-menu-item__heading">
        <h4 class="menu-item__title">
          <?php the_title() ?>
        </h4>
        <span class="menu-item__price">
          <?php echo '$' . get_field('price'); ?>
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
  </div>
</div>

<?php
//-----------------------------------------------------------------------------------
$beefDinner = new WP_Query(array(
  'posts_per_page' => -1,
  'post_type' => 'dinner',
  'meta_key' => 'category-dinner',
  'meta_value' => 'Beef',
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

<div class="dinner-menu">
  <div class="dinner-menu__title js-dinner-menu__title-hook">Beef
    <i class="fa fa-chevron-circle-right" aria-hidden="true"></i>
  </div>
  <div class="dinner-menu__main dinner-menu__main--brown">
    <?php
  //dinner mini-containers, all contained in dinner-menu
    while ($beefDinner->have_posts()) {
      $beefDinner->the_post(); ?>
    <div class="menu-item">
      <div class="menu-item__heading js-menu-item__heading">
        <h4 class="menu-item__title">
          <?php the_title() ?>
        </h4>
        <span class="menu-item__price">
          <?php echo '$' . get_field('price'); ?>
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
  </div>
</div>

<?php
//-----------------------------------------------------------------------------------
$seafood = new WP_Query(array(
  'posts_per_page' => -1,
  'post_type' => 'dinner',
  'meta_key' => 'category-dinner',
  'meta_value' => 'seafood',
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

<div class="dinner-menu">
  <div class="dinner-menu__title js-dinner-menu__title-hook">Seafood
    <i class="fa fa-chevron-circle-right" aria-hidden="true"></i>
  </div>
  <div class="dinner-menu__main dinner-menu__main--pink">
    <?php
  //dinner mini-containers, all contained in dinner-menu
    while ($seafood->have_posts()) {
      $seafood->the_post(); ?>
    <div class="menu-item">
      <div class="menu-item__heading js-menu-item__heading">
        <h4 class="menu-item__title">
          <?php the_title() ?>
        </h4>
        <span class="menu-item__price">
          <?php echo '$' . get_field('price'); ?>
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
  </div>
</div>

<?php
//-----------------------------------------------------------------------------------
$porkDinner = new WP_Query(array(
  'posts_per_page' => -1,
  'post_type' => 'dinner',
  'meta_key' => 'category-dinner',
  'meta_value' => 'pork',
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

<div class="dinner-menu dinner-menu__last dinner-menu--margin">
  <div class="dinner-menu__title js-dinner-menu__title-hook">Pork
    <i class="fa fa-chevron-circle-right" aria-hidden="true"></i>
  </div>
  <div class="dinner-menu__main dinner-menu__main--yellow">
    <?php
  //dinner mini-containers, all contained in dinner-menu
    while ($porkDinner->have_posts()) {
      $porkDinner->the_post(); ?>
    <div class="menu-item">
      <div class="menu-item__heading js-menu-item__heading">
        <h4 class="menu-item__title">
          <?php the_title() ?>
        </h4>
        <span class="menu-item__price">
          <?php echo '$' . get_field('price'); ?>
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
  </div>
</div>

<?php get_footer(); ?>