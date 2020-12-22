<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Career extends Model
{
    use HasFactory;

    public $timestamps = true;

    protected $fillable = [
        'company_id',
        'title',
        'slug',
        'body',
        'published',
        'end_at',
    ];
}
