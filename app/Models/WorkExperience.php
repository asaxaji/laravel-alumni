<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WorkExperience extends Model
{
    use HasFactory;

    public $timestamps = true;

    protected $dates = ['start_at', 'end_at'];

    protected $fillable = [
        'user_id',
        'company_id',
        'jabatan',
        'is_cureent',
        'start_at',
        'end_at',
    ];

    public function company()
    {
        return $this->hasOne(Company::class, 'id', 'company_id');
    }
}
