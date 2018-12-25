<?php

/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings ** //
if (file_exists(dirname(__FILE__) . '/local.php')) {
	//local db settings
	define('DB_NAME', 'local');
	define('DB_USER', 'root');
	define('DB_PASSWORD', 'root');
	/** MySQL hostname */
	define('DB_HOST', 'localhost');
} else {
	//live db settings
	define('DB_NAME', 'hsinchi0_hibachi11');
	define('DB_USER', 'hsinchi0_hsin11');
	define('DB_PASSWORD', 'tether19trac9j');
	/** MySQL hostname */
	define('DB_HOST', 'localhost');
	//envirionment variables via siteground
	// define('DB_NAME', $_SERVER['DB_NAME']);
	// define('DB_USER', $_SERVER['DB_USER']);
	// define('DB_PASSWORD', $_SERVER['DB_PASSWORD']);
	// /** MySQL hostname */
	// define('DB_HOST', 'localhost');
}


/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY', 'x5+iBpSLJMM3dBHiVZEyzqPTl+AwouLLC/zCrARJzLwWOZfNni5/VvDWs4CFEn1CQdmFgio4AJBVBcg48MVA/A==');
define('SECURE_AUTH_KEY', 'ATMMR/07qFY8XJSrpfHTb146a5EenNXAugNzT7WfAsajBQh21Qo69gsPHgv7Zf/CLkbzALWIIwX1SQkgjHGdsQ==');
define('LOGGED_IN_KEY', 'rXFMC3OxabnUt5B5pUGykM8pr/70v18rUcG2EcR8EsRyb2wLZLmF/gqK2rcy0JwNAl7q+RxtgHXEb2u60wwt8w==');
define('NONCE_KEY', 'Q/tnpehlwuYUIrVGHNJFicd3MnIwZ3IlvFh7h7Vyo5oI3Y/BLFpCt+XSu/gz6LRuTnk4+NtV/NSm+JAuOl3TkA==');
define('AUTH_SALT', 'fTh5pUjiih6WQTXoNsM1wJZuELPwP+lKdF6jd53crU/mUSNUI7tlFBsiJ5DxWtYZhsB9AbUAzsYlSIyAAVdycA==');
define('SECURE_AUTH_SALT', 'v+OiSud9XYMVrbfWYdzJ5X8sseWRjeRJrtzYDfJx8kAVwMkw+dUnuCVNihDeJGMPGk2eLDE2mOnHf2BK/VH7IA==');
define('LOGGED_IN_SALT', 'hfbMtNmEcmfGkryzDscXdG9ffEaf6h+XUd6xuI56MYlaLcnlAJXdY3K1PSXtLBHNIB2DXYsYg/fg/+JQKRoZxw==');
define('NONCE_SALT', '0GN3+TKdFefwVs/re2cC19Fz1iLSRGyunZWcwT3s1FT89yVJ/15addvbYidSfOQYKpSEQOv8ltywb/gV5yvcuA==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if (!defined('ABSPATH'))
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';