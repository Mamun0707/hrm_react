<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class attendance extends Model
{
    use HasFactory;
    protected $fillable=['name','employee_id','department','check_in','shift', 'status'];

    public function employee()
    {
        return $this->belongsTo(Employee::class);

        //  this is for relation table code(belongsTo)
    }
}
