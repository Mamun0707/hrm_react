<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Holidays extends Model
{
    use HasFactory;
    protected $fillable=['employee_id','title','type','start_date','end_date', 'details'];

    public function employee()
    {
        return $this->belongsTo(Employee::class, 'employee_id');

        //  this is for relation table code(belongsTo)
    }
}
