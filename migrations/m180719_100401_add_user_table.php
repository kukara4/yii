<?php

use yii\db\Migration;

/**
 * Class m180719_100401_add_user_table
 */
class m180719_100401_add_user_table extends Migration
{
    public function up()
    {

        $this->createTable('users', [
            'id' => $this->primaryKey(),
            'login' => $this->string()->notNull(),
            'email' => $this->string()->notNull(),
        ]);
        
    }

    public function down()
    {
        $this->dropTable('news');

    }
}
