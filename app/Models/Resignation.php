<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Resignation extends Model
{
    use HasFactory;
    protected $fillable=['employee_id','title','address_to','details', 'apply_date', 'effect_date', 'approve_date', 'status'];
}
