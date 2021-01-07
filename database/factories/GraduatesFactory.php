<?php

namespace Database\Factories;

use App\Models\Graduates;
use App\Models\University;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\Factory;

class GraduatesFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Graduates::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $user = User::whereEmail('risqir57@gmail.com')->first();
        $univ = University::first();
        return [
            'user_id' => $user->id,
            'university_id' => $univ->id,
            'faculty_id' => $univ->faculties->first()->id,
            'prody_id' => $univ->faculties->first()->prodies->first()->id,
            'image' => null,
            'title' => null,
            'pendidikan' => 'kuliah',
            'note' => 'Kuliah di kampus '.$univ->name,
            'is_cureent' => false,
            'start_at' => Carbon::now()->addYear(-4),
            'end_at' => Carbon::now(),
        ];
    }
}
