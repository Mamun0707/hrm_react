<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Payroll extends Model
{
    use HasFactory;
    protected $fillable=['employee_id',
                        'basic',
                        'h_rent',
                        'medical',
                         'fine',
                         'conveyance',
                         'provident_fund',
                         'net_pay',
                         'pay_period_start',
                         'pay_period_end'];
}
