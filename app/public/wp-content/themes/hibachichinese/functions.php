<?php 

function hibachi_files()
{
  wp_enqueue_script('googleMap', '//maps.googleapis.com/maps/api/js?key=AIzaSyBmzE7jZfM_ftrnqLOZZA21ANR95bVplVk', null, microtime(), true);
  wp_enqueue_script('hibachi-js', get_template_directory_uri() . '/js/scripts-bundled.js', null, microtime(), true);
  wp_enqueue_style('custom-google-fonts', '//fonts.googleapis.com/css?family=Bad+Script|Black+Ops+One|Pacifico|Rubik:300i|Bubblegum+Sans');
  wp_enqueue_style('font-awesome', 'https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
  wp_enqueue_style('hibachi_styles', get_template_directory_uri() . '/style.css', null, microtime());
}

function hibachi_features()
{
  add_theme_support('title-tag');
  add_theme_support('post-thumbnails');
  add_image_size('heroImageMobile', 450, 650, true);
  add_image_size('heroImageDesktop', 1280, 600, true);
  add_image_size('wordImage', 250, 150, true);
  add_image_size('smallBanner', 450, 150, true);
}

add_action('wp_enqueue_scripts', 'hibachi_files');
add_action('after_setup_theme', 'hibachi_features');

?>