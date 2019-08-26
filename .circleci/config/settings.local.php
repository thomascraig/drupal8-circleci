<?php

if (file_exists('salt.txt')) $settings['hash_salt'] = file_get_contents('/app/salt.txt');

$config_directories['sync'] = '../config/sync';

$databases['default']['default'] = array(
  'database' => 'drupal',
  'username' => 'root',
  'password' => '',
  'prefix' => '',
  'host' => '127.0.0.1',
  'port' => '',
  'namespace' => 'Drupal\\Core\\Database\\Driver\\mysql',
  'driver' => 'mysql',
);
