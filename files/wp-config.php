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

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'tapgerine_test');

/** MySQL database username */
define('DB_USER', 'tapgerine_test');

/** MySQL database password */
define('DB_PASSWORD', 'F7kFhCOrE94V1xPK');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '=yZ+2yr,^j_>?WG8eRQ&,N05_qArF7*X`[d&.HlKok7{V{%0}x.A,A=c4u>jM3bO');
define('SECURE_AUTH_KEY',  't$mTQ{H>7z=|v:_;$HL;H7+kZj)ZW**5hR+9:>a:-Ek xS_s3YDK t79rc71XL0N');
define('LOGGED_IN_KEY',    'Tw`]ITG@v%&(H)q+nZ3 5So]OuAL[=2n[SN(=9uv.:0_8G%&5CH I_LNR=K:YG:i');
define('NONCE_KEY',        'ro<_+rH0xh|,,(Udwq!/2SL`~*K!qWbWjD|05JB|1x2<(*mD~]L>Y>&-V:B~OkLi');
define('AUTH_SALT',        'C?Zr9L5fj+v@4t?uo+SH|lsE682WX&@:lNZlz/sUFsGukV+$*(SXOXe~bsMA$B+e');
define('SECURE_AUTH_SALT', 'my-;iaq-K0D}/18}u%8&;!k*#R$xUj+6n&NNH5([[%?&@[;u}8^} {p;3}Qbs9w!');
define('LOGGED_IN_SALT',   'dq87=166UpKEl@e&>Z ?%rjW>o/ /uuEsE cUm8!T2U+[~jO|,FH35A]D^_:u PB');
define('NONCE_SALT',       ',$}03K~d.35;d]l``^Q!TfU(VP$)wF2A[nT),A60W<%c+Ki,wH;NnM?<!$bk/pu3');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
