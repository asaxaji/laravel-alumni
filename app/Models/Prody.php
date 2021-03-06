<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Prody extends Model
{
    use HasFactory;

    public $timestamps = true;

    protected $fillable = [
        'faculty_id',
        'name',
        'slug'
    ];

    public function facultyId()
    {
        return $this->hasOne(Faculty::class, 'faculty_id', 'id');
    }
}
