<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    use HasFactory;

    public $timestamps = true;

    protected $fillable = [
        'author_id',
        'logo',
        'name',
        'slug',
        'email',
        'phone',
        'address',
        'gmaps',
        'body',
    ];
}
