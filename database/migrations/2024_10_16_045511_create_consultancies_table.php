<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('consultancies', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('cont_per');
            $table->string('phone');
            $table->string('email')->unique();
            $table->string('address');
            $table->date('cont_date');
            $table->string('cont_for');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('consultancies');
    }
};
