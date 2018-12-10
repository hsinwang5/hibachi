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
    <?php if (is_page('lunch-menu') or is_page('dinner-menu')) {
      echo '<a href="' . site_url() . '"><div class="header-container__logo"><i class="fa fa-arrow-circle-left" aria-hidden="true"></i></a></div>';
    } else {
      echo '<a href="' . site_url() . '"><div class="header-container__logo"><img src="https://i.imgur.com/CMiJdij.png" alt="knife logo"></a></div>';
    } ?>
    <div class="header-container__name">Hibachi</div>
  </div>
</body>

</html>