<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    use HasFactory;
    protected $fillable=['name','email','phone_no','date_of_birth','age','hire_date','job_location','designation_id', 'department_id','education','address', 'basic', 'provident_fund', 'medical', 'h_rent'];

    public function department()
    {
        return $this->belongsTo(Departments::class, 'department_id');

        //  this is for relation table code(belongsTo)
    }
    public function attendance()
    {
        return $this->hasMany(attendance::class)->where('status',1);

        //  this is for relation table code(belongsTo)
    }
}
