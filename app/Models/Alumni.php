<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Alumni extends Model
{
    use HasFactory;
    use SoftDeletes;

    public $timestamps = true;

    protected $fillable = [
        'firstname',
        'lastname',
        'nrp',
        'email',
        'agama',
        'birth_place',
        'birth_date',
        'phone_home',
        'phone_number',
        'whatsapp',
        'address',
        'provincy',
        'city',
        'zip_code',
    ];
}
