<?php

return [
    'class' => 'yii\db\Connection',
    'dsn' => 'pgsql:host=localhost;dbname=admin-db', 
    'username' => 'admin',
    'password' => 'vBUXaJvzKZcgdJzKsJXHTeBuQ',
    'charset' => 'utf8',
    'schemaMap' => [
      'pgsql'=> [
        'class'=>'yii\db\pgsql\Schema',
        'defaultSchema' => 'public'
      ]
    ],
];
