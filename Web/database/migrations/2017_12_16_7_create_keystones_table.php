<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateKeystonesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('keystones', function (Blueprint $table) {
            $table->increments('id');
            $table->string('stone_id');
            $table->string('stone_title');
            $table->string('stone_image');
            $table->boolean('isKey');
            $table->longText('stone_video');
            $table->longText('stone_long_description');
            $table->longText('stone_short_description');
            $table->longText('stone_taken_on');
            $table->integer('runes_id')->unsigned();
            $table->foreign('runes_id')->references('id')->on('runes')->onDelete('cascade');
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
