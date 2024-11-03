<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Consultancy extends Model
{
    use HasFactory;
    protected $fillable=['name','cont_per','phone','email', 'address','cont_date','cont_for'];
}
