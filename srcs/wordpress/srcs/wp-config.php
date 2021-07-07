<?php

define( 'DB_NAME', 'hrema' );

define( 'DB_USER', 'hrema' );

define( 'DB_PASSWORD', 'pass' );

define( 'DB_HOST', 'mysql:3306');
define( 'WP_HOME', 'http://192.168.99.201:5050/' );
define( 'WP_SITEURL', 'http://192.168.99.201:5050/' );

define( 'DB_CHARSET', 'utf8' );

define( 'DB_COLLATE', '' );

define('FS_METHOD', 'direct');

define('AUTH_KEY',         '~]JI|mq({w[ rv:RP$-F q8u8eV,RIxp>MEJq^{wFiIcf9AHlvYz 4qR$1dTUn|n');
define('SECURE_AUTH_KEY',  '4<L:o8NP5r3,HC|$CbyB,<+cy|0BYPh4iSl5s#p.zC*oy,bd$*`qDm$z;[e>;IeJ');
define('LOGGED_IN_KEY',    'Jkznkp)+{0`fEu5||aUt1jn$<P;b7sCkIZ/!vYUYD>sm.tOB[g|)xiIW`pEX-:6^');
define('NONCE_KEY',        'WaK|*R|+o_uj41N[G.tI]lN0Do=0$A97F|,gy^xMSU/:M-0K28vug9<1B+k,H;{T');
define('AUTH_SALT',        '}iUSR@ TsOJl$TQ1f>sME<3/%sn+fzQrW(4@6x$|^2Ty|4(LlSPmhpEQ`Qm0UUsg');
define('SECURE_AUTH_SALT', '|1 &@5Bw8O2VI|jmy=n>GYf^QF:lms29LEp7.n>PSe|_`c_N0A[5QJ([{`V@toLQ');
define('LOGGED_IN_SALT',   '|MCZ+T3[Lyji$%f,WvIJ@M:KVS+n-O+>%J;gSl5;h.NZS2bu9z-He,*@AL|ghyzL');
define('NONCE_SALT',       'z<<@s Gs4ldW|IuA-<Ta1<1@mK[_u5}^%D/qW?LuzmSaLPSE$BAhPMb2)brveyJ~');

$table_prefix = 'wp_';

define( 'WP_DEBUG', true );

if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

require_once ABSPATH . 'wp-settings.php';