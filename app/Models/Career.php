<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Career extends Model
{
    use HasFactory;

    public $timestamps = true;

    protected $dates = ['end_at'];

    protected $fillable = [
        'company_id',
        'title',
        'slug',
        'body',
        'city',
        'country',
        'published',
        'end_at',
    ];

    function companyId()
    {
        return $this->hasOne(Company::class, 'id', 'company_id');
    }
}
