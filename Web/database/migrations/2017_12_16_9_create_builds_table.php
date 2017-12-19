<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBuildsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('builds', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title');
            $table->longText('description');
            $table->longText('keystones');
            $table->integer('rune_secondary_id')->unsigned();
            $table->foreign('rune_secondary_id')->references('id')->on('runes')->onDelete('cascade');
            $table->integer('rune_main_id')->unsigned();
            $table->foreign('rune_main_id')->references('id')->on('runes')->onDelete('cascade');
            $table->integer('patch_id')->unsigned();
            $table->foreign('patch_id')->references('id')->on('patch')->onDelete('cascade');
            $table->integer('role_id')->unsigned();
            $table->foreign('role_id')->references('id')->on('roles')->onDelete('cascade');
            $table->integer('user_id')->unsigned();
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
            $table->integer('champion_id')->unsigned();
            $table->foreign('champion_id')->references('id')->on('champions')->onDelete('cascade');
            $table->integer('top_player_id')->unsigned();
            $table->foreign('top_player_id')->references('id')->on('top_player')->onDelete('cascade');
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
