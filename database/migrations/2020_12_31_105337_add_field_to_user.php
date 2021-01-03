<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddFieldToUser extends Migration
{
    /**
     * Run the migrations.
     * 
     * @return void
     */
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->renameColumn('name', 'firstname');
            $table->string('lastname')->after('email');
            $table->string('nrp')->nullable()->after('lastname');
            $table->string('agama')->nullable()->after('nrp');
            $table->string('birth_place')->nullable()->after('agama');
            $table->date('birth_date')->nullable()->after('birth_place');
            $table->string('phone_home')->nullable()->after('birth_date');
            $table->string('phone_number')->nullable()->after('phone_home');
            $table->string('whatsapp')->nullable()->after('phone_number');
            $table->text('address')->nullable()->after('whatsapp');
            $table->string('provincy')->nullable()->after('address');
            $table->string('city')->nullable()->after('provincy');
            $table->string('zip_code')->nullable()->after('city');
            $table->foreignId('alumni_id')->nullable()->after('zip_code');
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->dropColumn('firstname', 'lastname', 'nrp', 'alumni_id', 'deleted_at');
        });
    }
}
