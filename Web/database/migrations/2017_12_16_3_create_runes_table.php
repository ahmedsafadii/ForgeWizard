<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRunesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('runes', function (Blueprint $table) {
            $table->increments('id');
            $table->string('rune_id');
            $table->string('rune_title');
            $table->string('rune_image');
            $table->string('rune_sub_title');
            $table->longText('rune_description');
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
