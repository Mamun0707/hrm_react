<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    use HasFactory;
    protected $fillable=['name','email','phone_no','date_of_birth','age','hire_date','job_location','designation_id', 'department_id','education','address', 'salary'];
}
