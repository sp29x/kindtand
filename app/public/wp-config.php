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
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'uSFt8AKTYKvbE6P73edHscGoYJyqvXF2kKEWwyxb7cQCW7xMGo34h68JYZ7yQD63l5H19r5aybQrB6taJldSaQ==');
define('SECURE_AUTH_KEY',  'qrjTZbqMC4x+1EcnBDZLts2kWJT/u4aoCFEyOKLqH2ekWv2fU1fjbLYCKu7VvKgzyHjOq9QI0J1Aw8u615YkRA==');
define('LOGGED_IN_KEY',    'y4OBFeSRuqxuQdKMz34NDTZqvgHce3v+7Glp7/JDmi1S7dt2O1PtOTJztlKolMEnh1ldsi7LMTkYeAKuCsNXDw==');
define('NONCE_KEY',        'QU07DzTLWgM7LBCgpeezPYhWndCbR6k39lhpI/9ZrDSW9XVOYBhvoMxD7NZvh3i/skSaMQUiaOWZHt8MtRdyYA==');
define('AUTH_SALT',        '5Wcx5nv/sOa6IyxIt4hN1V37QINYHgLx3CD6Mq9jylRG6tAIehi1QWwXMUDraDHte20GKGFQQxAgQnkk9e7y+w==');
define('SECURE_AUTH_SALT', 'nrIx1kEA83isJZpv1I1MpcdEZBDTuWO/dQXndglb650Yr6rM4zxo5GVpsdUgT1mQ3VG/jN3YRezBC1WApyKvjQ==');
define('LOGGED_IN_SALT',   'QRA/4yVKWAc5NvKpjaXn5EDmpT9yMRoSgvYsVpQLZtTX6cunlIJ8zwzSoSUbbpsF4gmuYPsFFyw2hAjKEvlJhA==');
define('NONCE_SALT',       'JsHjFU9Fv71d9Fw0P7KDr9m8DtGsxWtD713CA451kTQ1ZJnS+UqyRpX3ICs305rSgeRZNYpSnlhzgXh7vi0sJA==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
