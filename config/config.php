<?php

require_once 'constants.php';
require_once HELPERS_PATH. 'etc.php';

// puede afectar el punto decimal al formar sentencias SQL !!!
// setlocale(LC_ALL, 'es_AR.UTF-8');

return [
	'APP_URL' => env('APP_URL'),

	#
	# For a sub-foder in /var/www/html just set as
	# BASE_URL' => /folder/'
	#
	'BASE_URL' => '/',   

	'ROUTER' => true,
	'FRONT_CONTROLLER' => true,
	
	/*
		urls start with /api/ if REMOVE_API_SLUG is set to false
	*/	
	'REMOVE_API_SLUG' => false, 
	'HTTPS' => 'Off',
	'DEFAULT_CONTROLLER' => 'LoginController',

	'db_connections' => [
		'main' => [
			'host'		=> env('DB_HOST', '127.0.0.1'),
			'port'		=> env('DB_PORT', 3306),
			'driver' 	=> env('DB_CONNECTION'),
			'db_name' 	=> env('DB_DATABASE'), 
			'user'		=> env('DB_USERNAME'), 
			'pass'		=> env('DB_PASSWORD'),
			'charset'	=> 'utf8',
			'pdo_options' => [
				\PDO::ATTR_ERRMODE => \PDO::ERRMODE_EXCEPTION,
				\PDO::ATTR_EMULATE_PREPARES => false
			]
		],
		
		'ar' => [
			'host'		=> env('DB_HOST_AR', '127.0.0.1'),
			'port'		=> env('DB_PORT_AR', 3306),
			'driver' 	=> env('DB_CONNECTION_AR'),
			'db_name' 	=> env('DB_DATABASE_AR'), 
			'user'		=> env('DB_USERNAME_AR'), 
			'pass'		=> env('DB_PASSWORD_AR'),
			'charset'	=> 'utf8',
			'pdo_options' => [
				\PDO::ATTR_ERRMODE => \PDO::ERRMODE_EXCEPTION,
				\PDO::ATTR_EMULATE_PREPARES => false
			]
		]		

	], 

	'db_connection_default' => 'main',  
	
	'DateTimeZone' => 'America/Argentina/Buenos_Aires',

	'error_handling'   => true,
	'debug'   => env('APP_DEBUG', true),

	'access_token' => [
		'secret_key' 		=> env('TOKENS_ACCSS_SECRET_KEY'),
		'expiration_time'	=> 60 * 15 * 10000,   // seconds (normalmente 60 * 15)
		'encryption'		=> 'HS256'			
	],

	'refresh_token' => [
		'secret_key'		=> env('TOKENS_REFSH_SECRET_KEY'),
		'expiration_time' 	=> 315360000,   // seconds
		'encryption' 		=> 'HS256'	
	],

	'method_override' => [
		'by_url' => true,
		'by_header' => true
	],

	/* 
		Any role listed bellow if it is asked then will be auto-aproved.
	*/
	'auto_approval_roles' => ['dev'],

	/*
		If you need email confirmation then pre_activated should be false
	*/
	'pre_activated' => false,

	'email' => [
		'secret_key' => env('TOKENS_EMAIL_SECRET_KEY'),
		'expires_in' => 7 * 24 * 3600,
		'encryption' => 'HS256',
		'mailer' =>  [	
			'from'	 => [env('MAIL_DEFAULT_FROM_ADDR'), env('MAIL_DEFAULT_FROM_NAME')],	
			'object' => [
				'Host'			=> env('MAIL_HOST'),
				'Port'			=> env('MAIL_PORT'),
				'Username' 		=> env('MAIL_USERNAME'),
				'Password' 		=> env('MAIL_PASSWORD'),
				'SMTPSecure'	=> env('MAIL_ENCRYPTION'),
	            'SMTPAuth' 		=> true,
				'SMTPDebug' 	=> 4,
				'CharSet' 		=> 'UTF-8',
				'Debugutput' 	=> 'html',
				'SMTPSecure'	=> false
			]
		]
	],

	'pretty' => true,	
	
	'paginator' => [
					'max_limit' => 50,
					'default_limit' => 10,
					'position' => 'TOP'
	],

	'google_auth'  => [
		'client_id' 	=> env('OAUTH_GOOGLE_CLIENT_ID'),
		'client_secret' => env('OAUTH_GOOGLE_CLIENT_SECRET'),
		'callback_url' 	=> env('OAUTH_GOOGLE_CALLBACK')
	],

	'facebook_auth' => [
		'app_id' 		=> env('OAUTH_FACEBOOK_CLIENT_ID'),
		'app_secret'	=> env('OAUTH_FACEBOOK_CLIENT_SECRET'), 
		'callback_url'	=> env('OAUTH_FACEBOOK_CALLBACK')
	],

	/*
		Service Providers
	*/

	'providers' => [
		//devdojo\calculator\CalculatorServiceProvider::class,
		boctulus\grained_acl\GrainedAclServiceProvider::class,
		boctulus\basic_acl\BasicAclServiceProvider::class
		// ...
	],
	
];