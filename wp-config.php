<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress_db' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', 'root' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'p7f!Wh4l]/MVBFbCg$NtG0Fw6IuYR&YpmDnk}Zqnc#VWHosO 1~NDYOY-|D_N[;K' );
define( 'SECURE_AUTH_KEY',  'iAhw68o-tBN83GQ1! k[n%4t( <&:C*+jz&7:VhsNZgi4krEV]CGbd4pYLvy/syO' );
define( 'LOGGED_IN_KEY',    'EI1_>)r^52Z!;G8<#tH2s*$>=0Y, x(+(A4.4oMz;W!B.w6ufNNGO:+LsZZ5t,4I' );
define( 'NONCE_KEY',        'Zoz5LwN[@.<6d<M7c~JB4T!i=<vZ;1?9N1MzVm*Xv4e^et}Ct`5H:3T/qW/lg+zi' );
define( 'AUTH_SALT',        'M=L73JLSqL3];f?RgM)q5meG=t{|(Hl;h+DF--9(K_*ad}~GiWOlPs]!bGOx?wKi' );
define( 'SECURE_AUTH_SALT', '%rMh.>cQ;(z>`jDuXiru/hl`8IjFm]Os;LQgorkw-9-JrJI>_T83C|oh~S8@wLOQ' );
define( 'LOGGED_IN_SALT',   '):[U?7C8_xrYf&&aC*|,;uPkT@UQv5KQsc#2crrN*)rO.AC,>PcBfA,fx$/+[:>)' );
define( 'NONCE_SALT',       'U}N8TGMHuVetU `6]^z&<J)hd/Wr9 K4~Dyr/L]bml8of8U2*O}13?4{j-#Q=EQ@' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define('WP_DEBUG', true);
define('WP_DEBUG_LOG', true);
define('WP_DEBUG_DISPLAY', false);


/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
