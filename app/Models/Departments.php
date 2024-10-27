<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Departments extends Model
{
    use HasFactory;
    protected $fillable=['dept_name','head_of_dept','phone','email', 'total_emp'];
    public function employee()
    {
        return $this->belongsTo(Employee::class);

        //  this is for relation table code(belongsTo)
    }
}
