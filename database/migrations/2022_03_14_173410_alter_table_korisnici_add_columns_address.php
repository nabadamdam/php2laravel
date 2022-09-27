<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AlterTableUsersAddColumnsAddress extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->string('last_name')->after('name')->nullable();
            $table->string('status')->after('last_name')->default(1);
            $table->string('avatar')->after('status')->nullable();
            $table->string('phone_number')->after('avatar')->nullable();
            $table->string('address')->after('phone_number')->nullable();
            $table->string('city')->after('address')->nullable();
            $table->string('country')->after('city')->nullable();
            $table->string('postal_code')->after('country')->nullable();
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
