<!DOCTYPE html>
<html <?php language_attributes(); ?>>

<head>
  <meta charset="<?php bloginfo('charset'); ?>">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <meta name="google-site-verification" content="0RaCILHnjEfxSahevymHMLYc8zCKyPLT4Yn65lP0mN4" />
  <?php wp_head(); ?>
</head>

<body <?php body_class(); //gives information about the page being viewed ?>>
  <a href="<?php echo site_url(); ?>">
    <div class="round-logo"><img src="<?php echo get_theme_file_uri('images/HibachiRound.png') ?>"
        alt="Hibachi Logo"></div>
  </a>
  <div class="header-container">
    <a href="<?php echo site_url("/lunch-menu"); ?>"><div class="header-container__link header-container__link--1">Lunch
        Menu</div></a>
    <a href="<?php echo site_url("/dinner-menu"); ?>"><div class="header-container__link header-container__link--2">Dinner
        Menu</div></a>
    <a href="<?php echo site_url("/location"); ?>"><div class="header-container__link header-container__link--3">Location</div></a>
    <div class="header-container__name"><i class="fa fa-phone" aria-hidden="true"></i>(770)
      263-8938 <a href="https://www.ubereats.com/en-US/atlanta/food-delivery/hibachi/8nF6NzC-TOCxYVGXT47mcw/"><span
          class="button button--tiny">Order at UberEats</span></a></div>
  </div>


  <div class="mobile-menu"><i class="fa fa-bars" aria-hidden="true"></i>
  </div>

  <div class="radial-menu">
    <a href="<?php echo site_url(); ?>">
      <img src="<?php echo get_theme_file_uri('images/HibachiRound.png') ?>"
        alt="Hibachi Logo">
    </a>
    <a href="<?php echo site_url("/lunch-menu"); ?>"><div class="radial-menu__link radial-menu__link--1">Lunch
        Menu</div></a>
    <a href="<?php echo site_url("/dinner-menu"); ?>"><div class="radial-menu__link radial-menu__link--2">Dinner
        Menu</div></a>
  </div>
</body>

</html>