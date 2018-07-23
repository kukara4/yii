<?php

use yii\db\Migration;

/**
 * Class m180723_062853_tbl_user_update
 */
class m180723_062853_tbl_user_update extends Migration
{
  public function up()
  {

    $this->addColumn('users', 'comment', $this->string());

  }

  public function down()
  {
      echo "Can not revert";

  }
}
