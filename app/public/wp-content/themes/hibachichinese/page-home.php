<?php get_header(); ?>

<div class="hero-menu">
  <img class="mobile-image" src="<?php echo get_field('hero_image_1_mobile')['sizes']['heroImageMobile']; ?>"
    alt="noodle bowl">
  <!-- <img class="desktop-image" src="https://i.imgur.com/6RtEepo.jpg" alt=""> -->
  <img class="desktop-image" src="<?php echo get_field('hero_image_1_desktop')['sizes']['heroImageDesktop']; ?>"
    alt="noodle bowl">
  <div class="hero-menu__title">
    <img src="<?php echo get_theme_file_uri('images/Hibachi.png') ?>" alt="">
  </div>
  <div class="button-container">
    <a href="<?php echo site_url('/lunch-menu'); ?>">
      <div class="button button--main">Lunch Menu</div>
    </a>
    <a href="<?php echo site_url('/dinner-menu'); ?>">
      <div class="button button--main">Dinner Menu
        <?php //print_r(get_field('hero_image_1_mobile')['sizes']); ?>
      </div>
    </a>
  </div>
</div>

<div class="main-menu">
  <div class="main-menu__lunch-specials">

  </div>
  <div class="main_menu__dinner-combos">

  </div>
</div>


<div class="home-container">
  <div class="order-options">
    <h3>Multiple ways to order!</h3>
    <a href="https://www.grubhub.com/restaurant/hibachi-3230-medlock-bridge-rd-ste-106-norcross/851530">
      <div class="button button--jumbo">Order at Grubhub</div>
    </a>
    <a href="https://www.ubereats.com/en-US/atlanta/food-delivery/hibachi/8nF6NzC-TOCxYVGXT47mcw/">
      <div class="button button--jumbo">Order at UberEats</div>
    </a>
    <a href="https://www.beyondmenu.com/29682/norcross/hibachi-chinese-and-japanese-restaurant-norcross-30092/info.aspx">
      <div class="button button--jumbo">Order at BeyondMenu</div>
    </a>
    <div class="button button--jumbo">Locations</div>
  </div>

  <div class="featured-dish">
    <img class="mobile-image mobile-image__small" src="<?php echo get_field('hero_image_2_mobile')['sizes']['heroImageMobile']; ?>"
      alt="featured dish">
    <img src="<?php echo get_field('hero_image_2_desktop')['sizes']['heroImageDesktop']; ?>"
      alt="featured dish" class="desktop-image desktop-image__small">
    <div class="featured-dish__textbox">
      <img class="featured-dish__logo" src="<?php echo get_field('hero_image_2_logo')['sizes']['wordImage']; ?>"
        alt="premium logo">
      <div class="textbox1">Hibachi</div>
      <div class="textbox2">NY Steak</div>
    </div>
    <div class="featured-dish__screen"></div>
  </div>
</div>

<div class="special-offers">
  <h3>Daily Offers (Pickup orders only)</h3>
  <div class="special-offers__container">
    <div class="special-offers__offer" style="background-image: url(<?php echo get_field('special_offer_1_image')['sizes']['smallBanner']; ?>);">
      <div class="special-offers__screen"></div>
      <div class="special-offers__text">
        <?php echo get_field('special_offer_1'); ?>
      </div>
    </div>
    <div class="special-offers__offer" style="background-image: url(<?php echo get_field('special_offer_2_image')['sizes']['smallBanner']; ?>)">
      <div class="special-offers__screen"></div>
      <div class="special-offers__text">
        <?php echo get_field('special_offer_2'); ?>
      </div>
    </div>
  </div>
</div>

<?php get_footer(); ?>