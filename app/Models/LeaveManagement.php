<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LeaveManagement extends Model
{
    use HasFactory;
    protected $fillable=['employee_id','name','apply_date','leave_from', 'leave_to','leave_type'];
}
