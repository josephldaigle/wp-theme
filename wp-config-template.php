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
define('DB_NAME', $_SERVER['RDS_DB_NAME']);

/** MySQL database username */
define('DB_USER', $_SERVER['RDS_USER']);

/** MySQL database password */
define('DB_PASSWORD', $_SERVER['RDS_PASSWORD']);

/** MySQL hostname */
define('DB_HOST', $_SERVER['RDS_HOSTNAME'] . ':' . $_SERVER['RDS_PORT']);

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
//define('AUTH_KEY',         'zEj24w[[6NI&1h=I361[gcXS2zd+)Dmc6vb7Z/d4F}Tjg)63e0:v1_5--Kt.>get');
//define('SECURE_AUTH_KEY',  'rx$CAk8ss%MArto z2kkfL.]tk*^Ehs{eG#S#ORVkw~mPqo%suH&IQ7%_.=ZPGIu');
//define('LOGGED_IN_KEY',    'd4KLWOdY6igu0cTvlUfEA+66Q}$93Q5>Rij+IFOx]0`d-_XexgzNF{pN}6|k!*mV');
//define('NONCE_KEY',        'd*S/Z*?g^$s|iSeyJ/-u,Pax>BQfF0eI(cX-!xe;H2GLt|{U.ME38X78^/)bJKUS');
//define('AUTH_SALT',        'm.H%yD-B!_Y|.P/T-cPVD~#U2-f8^YHgJmQRKzIEt~pTdmaMf}o}#24fUdG0P@lt');
//define('SECURE_AUTH_SALT', '?&5c7Rz8:M0+xA0!NFlgT8!|8ck/tM4{NYFUx4tu%5N>m^:JD*Aad|`[.:.pid2l');
//define('LOGGED_IN_SALT',   'd[hjVZ/-AgeetOD:IY_QwO[@-K<|R Brcs>PTt`~hU+ur-^=%XaeTr7X/CUV4rmc');
//define('NONCE_SALT',       '3YiM=?Y{7L]:0Md33r,>f9t4%H}1]v y=LL[ZC+]|1]w;FYIHH1e==dfCkyyt-x%');


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