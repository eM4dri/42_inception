<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
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
define( 'DB_NAME', 'database_name_here' );

/** Database username */
define( 'DB_USER', 'username_here' );

/** Database password */
define( 'DB_PASSWORD', 'password_here' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

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
define('AUTH_KEY',         '2|<r&-pM(dIu]=-fE#$PRaTVw1K*|n$L!5PRb6Pfw=+r!+sI8]-Je;x2G7Zmhc&h');
define('SECURE_AUTH_KEY',  '9qtO7+Cw!;q(!Vq3+rcDc+}!VNOuSQ8S5W-g4}Dwl;?&eioGMOb+v`>jyQL(=$bI');
define('LOGGED_IN_KEY',    ':Ar?m//<7N!mr>xJD=]`-JEeg-{:}lro`9%Tq5nR5VHR@]?zrSh?m)iuQ+*lYVMw');
define('NONCE_KEY',        'Z,.3$h8<C>P=fPi6^=(PF:#anQj=) Z@R#ed`W#`:YGm sxr|t[#1:{st1%FsJJX');
define('AUTH_SALT',        '|0Z|3zRzYE-S&.poMz moxy%?$F.;dI(y?cXw`65IsO:g8c=_tRl<?Z!:r-}!4|-');
define('SECURE_AUTH_SALT', '-te3Mk,1>9-c{5=pJ?-6rD--zyu]E+rI1ZdH)OV];Ib}H2cV^/*^M5NhM0p4_lUA');
define('LOGGED_IN_SALT',   'u|E~,o%rZ[W(u*YyLD5zrh`X)e1MSESGz?At3<$([(&+XH@}_>}WV)@WU+@*.+V#');
define('NONCE_SALT',       'HPWk:Tl+z|N(YhlE5>g>-Za@83f=uhAC_kn#ZaQ!Ds_33]+A&c$}KRzq;&u,aaO0');

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
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
