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
        Schema::create('resignations', function (Blueprint $table) {
            $table->id();
            $table->string('employee_id');
            $table->string('title', 255);
            $table->string('address_to', 255);
            $table->string('details', 255);
            $table->date('apply_date');
            $table->date('effect_date');
            $table->date('approve_date')->nullable();
            $table->string('status', 255);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('resignations');
    }
};
