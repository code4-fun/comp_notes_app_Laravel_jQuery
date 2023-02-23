<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
  /**
   * Run the migrations.
   *
   * @return void
   */
  public function up()
  {
    Schema::create('comments', function (Blueprint $table) {
      $table->bigIncrements('id');
      $table->text('comment');
      $table->bigInteger('comp_column');
      $table->timestamps();
      $table->bigInteger('comp_id');
      $table->foreign('comp_id')
        ->references('id')
        ->on('companies');
    });
  }

  /**
   * Reverse the migrations.
   *
   * @return void
   */
  public function down()
  {
    Schema::dropIfExists('comments');
  }
};
