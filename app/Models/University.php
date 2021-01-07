<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class University extends Model
{
    use HasFactory;

    public $timestamps = true;

    protected $fillable = [
        'name',
        'slug'
    ];

    public function faculties()
    {
        return $this->hasMany(Faculty::class, 'university_id', 'id');
    }
}
