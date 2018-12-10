<?php
add_action('init', 'hibachi_post_types');

function hibachi_post_types()
{
  //menu item post type
  register_post_type('food', array(
    'supports' => array('editor', 'title', 'thumbnail'),
    'has-archive' => false,
    'public' => true,
    'show_in_rest' => true,
    'labels' => array(
      'name' => 'Lunch',
      'add_new_item' => 'Add New Food',
      'edit_item' => 'Edit Food',
      'all_items' => 'All Foods',
      'singular_name' => 'Food'
    ),
    'menu_icon' => 'dashicons-carrot'
  ));

  register_post_type('dinner', array(
    'supports' => array('editor', 'title', 'thumbnail'),
    'has-archive' => false,
    'public' => true,
    'show_in_rest' => true,
    'labels' => array(
      'name' => 'Dinner',
      'add_new_item' => 'Add New Dinner',
      'edit_item' => 'Edit Dinner',
      'all_items' => 'All Dinners',
      'singular_name' => 'Dinner'
    ),
    'menu_icon' => 'dashicons-store'
  ));
}

?>