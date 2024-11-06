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
        Schema::create('payrolls', function (Blueprint $table) {
            $table->id();
            $table->BigInteger('employee_id'); // employee_id foreign key
            $table->decimal('basic', 8, 2);
            $table->decimal('h_rent', 8, 2);
            $table->decimal('medical', 8, 2);
            $table->decimal('fine', 8, 2)->default(0); // default to 0 if no fine
            $table->decimal('conveyance', 8, 2);
            $table->decimal('provident_fund', 8, 2);
            $table->decimal('net_pay', 8, 2);
            $table->string('salary_month');
            $table->year('salary_year');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('payrolls');
    }
};
