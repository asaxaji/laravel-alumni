<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Graduates extends Model
{
    use HasFactory;
    
    public $timestamps = true;

    protected $dates = ['start_at',
    'end_at',];

    protected $fillable =[
        'user_id',
        'university_id',
        'faculty_id',
        'prody_id',
        'image', // hidden
        'title',
        'pendidikan',
        'note',
        'is_cureent',
        'start_at',
        'end_at',
    ];

    public function university()
    {
        return $this->hasOne(University::class, 'id', 'university_id');
    }

    public function faculty()
    {
        return $this->hasOne(Faculty::class, 'id', 'faculty_id');
    }

    public function prody()
    {
        return $this->hasOne(Prody::class, 'id', 'prody_id');
    }

    public function user()
    {
        return $this->hasOne(User::class, 'id', 'user_id');
    }
}
