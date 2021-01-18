<?php

namespace Database\Factories;

use App\Models\Company;
use App\Models\User;
use App\Models\WorkExperience;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\Factory;

class WorkExperienceFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = WorkExperience::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $user = User::whereEmail('risqir57@gmail.com')->first();
        $company = Company::first();
        return [
            'user_id' => $user->id,
            'company_id' => 'PT.'.$company->name,
            'jabatan' => 'isi jabatan',
            'is_cureent' => false,
            'start_at' => Carbon::now()->addYear(-1),
            'end_at' => Carbon::now(),
        ];
    }
}
