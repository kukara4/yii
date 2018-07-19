<?php

use yii\db\Migration;

/**
 * Class m180719_092555_init
 */
class m180719_092555_init extends Migration
{
   
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

        $this->createTable('news', [
            'id' => $this->primaryKey(),
            'title' => $this->string()->notNull(),
            'content' => $this->text(),
        ]);
        
    }

    public function down()
    {
        $this->dropTable('news');

    }
    
}
