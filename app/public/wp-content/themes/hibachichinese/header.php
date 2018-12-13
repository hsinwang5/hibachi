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
      <div class="header-container__logo"><img src="<?php echo get_theme_file_uri('images/HibachiLogo.png') ?>"
          alt="Hibachi Logo"></div>
    </a>
    <!-- echo '<a href="' . site_url() . '"><div class="header-container__logo"><img src="https://i.imgur.com/CMiJdij.png" alt="knife logo"></a></div>'; -->
    <a href="<?php echo site_url("/lunch-menu"); ?>"><div class="header-container__link">Lunch
        Menu</div></a>
    <a href="<?php echo site_url("/dinner-menu"); ?>"><div class="header-container__link">Dinner
        Menu</div></a>
    <a href="<?php echo site_url("/location"); ?>"><div class="header-container__link">Location</div></a>
    <div class="header-container__name">3230 Medlock Bridge Rd</div>
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
</body>

</html>