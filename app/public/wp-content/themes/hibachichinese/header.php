<!DOCTYPE html>
<html <?php language_attributes(); ?>>

<head>
  <meta charset="<?php bloginfo('charset'); ?>">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <?php wp_head(); ?>
</head>

<body <?php body_class(); //gives information about the page being viewed ?>>
  <div class="header-container">
    <a href="<?php echo site_url(); ?>">
      <img src="<?php echo get_theme_file_uri('images/HibachiRound.png') ?>"
        alt="Hibachi Logo">
    </a>
    <a href="<?php echo site_url("/lunch-menu"); ?>"><div class="header-container__link header-container__link--1">Lunch
        Menu</div></a>
    <a href="<?php echo site_url("/dinner-menu"); ?>"><div class="header-container__link header-container__link--2">Dinner
        Menu</div></a>
    <a href="<?php echo site_url("/location"); ?>"><div class="header-container__link header-container__link--3">Location</div></a>
    <div class="header-container__name"><i class="fa fa-phone" aria-hidden="true"></i>(770)
      263-8938</div>
  </div>

  <div class="mobile-menu"><i class="fa fa-bars" aria-hidden="true"></i>
  </div>
  <div class="pop-down-menu__container">
    <div class="pop-down-menu">
      <a href="<?php echo site_url("/lunch-menu"); ?>"><div class="pop-down-menu__link">Lunch
          Menu</div></a>
      <a href="<?php echo site_url("/dinner-menu"); ?>"><div class="pop-down-menu__link">Dinner
          Menu</div></a>
      <a href="<?php echo site_url("/location"); ?>"><div class="pop-down-menu__link">Location</div></a>
    </div>
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