<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Faculty extends Model
{
    use HasFactory;

    public $timestamps = true;

    protected $fillable = [
        'university_id',
        'name',
        'slug'
    ];

    public function universityId()
    {
        return $this->hasOne(Faculty::class, 'university_id', 'id');
    }

    public function prodies()
    {
        return $this->hasMany(Prody::class, 'faculty_id', 'id');
    }
}
