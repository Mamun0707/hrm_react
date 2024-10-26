<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LeaveManagement extends Model
{
    use HasFactory;
    protected $fillable=['employee_id','name','apply_date','leave_from', 'leave_to','leave_type'];

    public function employee()
    {
        return $this->belongsTo(Employee::class);
        
        //  this is for relation table code(belongsTo)
    }

}
