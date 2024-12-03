<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Career extends Model
{
    use HasFactory;
    protected $fillable=['name','date_of_birth','phone_no','email', 'address',
                             'district', 'prof_exp', 'education','resume_pdf'];
}
