<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateKeystonesWhyTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('keystones_why', function (Blueprint $table) {
            $table->increments('id');
            $table->longText('stone_why');
            
            $table->integer('builds_id')->unsigned();
            $table->foreign('builds_id')->references('id')->on('builds')->onDelete('cascade');
            
            $table->integer('keystones_id')->unsigned();
            $table->foreign('keystones_id')->references('id')->on('keystones')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
