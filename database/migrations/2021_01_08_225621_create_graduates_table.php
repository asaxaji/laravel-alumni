<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateGraduatesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('graduates', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id');
            $table->foreignId('university_id')->nullable();
            $table->foreignId('faculty_id')->nullable();
            $table->foreignId('prody_id')->nullable();
            $table->string('image')->nullable();
            $table->string('title')->nullable();
            $table->enum('pendidikan', ['sd', 'smp', 'sma', 'kuliah'])->default('kuliah')->nullable();
            $table->text('note')->nullable();
            $table->boolean('is_cureent')->default(false);
            $table->date('start_at');
            $table->date('end_at')->nullable();
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
        Schema::dropIfExists('graduates');
    }
}
