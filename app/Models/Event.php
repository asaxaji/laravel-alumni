<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    use HasFactory;

    public $timestamps = true;

    protected $fillable = [
        'author_id',
        'image',
        'title',
        'slug',
        'excerpt',
        'body',
        'location',
        'start_at',
    ];
}
