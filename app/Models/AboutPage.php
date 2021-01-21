<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AboutPage extends Model
{
    use HasFactory;

    public $timestamps = true;

    protected $fillable = [
        'title',
        'body',
        'image',
        'image_structures',
    ];
}
