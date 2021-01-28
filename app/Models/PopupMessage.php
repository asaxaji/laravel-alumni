<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PopupMessage extends Model
{
    use HasFactory;

    public $yimestamps = true;

    protected $fillable = [
        'name',
        'slug',
        'image',
        'body',
        'is_publish',
    ];
}
