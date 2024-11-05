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
        Schema::create('employees', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('email');
            $table->string('phone_no');
            $table->string('date_of_birth');
            $table->string('age');
            $table->string('hire_date');
            $table->string('job_location');
            $table->string('designation_id')->nullable();
            $table->string('department_id')->nullable();
            $table->string('education')->nullable();
            $table->string('address');
            $table->decimal('salary', 8, 2)->nullable();
            $table->decimal('provident_fund', 8, 2);
            $table->decimal('medical', 8, 2);
            $table->decimal('h_rent', 8, 2);
            $table->timestamps();

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('employees');
    }
};
