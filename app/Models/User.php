<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Foundation\Auth\User as Authenticatable; // use this extends
use Illuminate\Notifications\Notifiable;
use Laravel\Fortify\TwoFactorAuthenticatable;
use Laravel\Jetstream\HasProfilePhoto;
use Laravel\Sanctum\HasApiTokens;
use TCG\Voyager\Models\Post;

class User extends \TCG\Voyager\Models\User implements MustVerifyEmail
{
    use HasFactory;
    use Notifiable;
    use HasApiTokens;
    use HasProfilePhoto;
    use TwoFactorAuthenticatable;
    use SoftDeletes;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'firstname',
        'lastname',
        'nrp',
        'email',
        'agama',
        'birth_place',
        'birth_date',
        'phone_home',
        'phone_number',
        'whatsapp',
        'address',
        'provincy',
        'city',
        'zip_code',
        'alumni_id',
        'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'remember_token',
        'two_factor_recovery_codes',
        'two_factor_secret',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    /**
     * The accessors to append to the model's array form.
     *
     * @var array
     */
    protected $appends = [
        'profile_photo_url',
    ];

    public function alumniId()
    {
        return $this->belongsTo(Alumni::class, 'alumni_id', 'id');
    }

    public function getNameAttribute() {
        return $this->firstname .' '. $this->lastname;
    }

    public function lifeCertificates()
    {
        return $this->hasMany(LifeCertificate::class, 'user_id', 'id');
    }

    public function graduates()
    {
        return $this->hasMany(Graduates::class, 'user_id', 'id')->orderByDesc('created_at');
    }
    
    public function workExperiences()
    {
        return $this->hasMany(WorkExperience::class, 'user_id', 'id');
    }

    public function events()
    {
        return $this->belongsToMany(Event::class, 'event_users');
    }

    public function careers()
    {
        return $this->belongsToMany(Career::class, 'career_users');
    }

    public function authorPost() 
    {
        return $this->hasMany(Post::class, 'author_id', 'id');
    }

    public function authorCareer() 
    {
        return $this->hasMany(Career::class, 'author_id', 'id');
    }
}
