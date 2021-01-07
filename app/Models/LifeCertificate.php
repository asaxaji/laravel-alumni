<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LifeCertificate extends Model
{
    use HasFactory;

    public $timestamps = true;

    protected $fillable =[
        'user_id',
        'image',
        'title',
        'note'
    ];
}
