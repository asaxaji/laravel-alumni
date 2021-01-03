<?php

namespace Database\Factories;

use App\Models\Alumni;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\Factory;

class AlumniFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Alumni::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'firstname' => $this->faker->firstName,
            'lastname' => $this->faker->lastName,
            'nrp' => $this->faker->numerify('nrp####'),
            'email' => $this->faker->email,
            'agama' => 'islam',
            'birth_place' => $this->faker->city,
            'birth_date' => Carbon::now(),
            'phone_home' => $this->faker->phoneNumber,
            'phone_number' => $this->faker->phoneNumber,
            'whatsapp' => $this->faker->phoneNumber,
            'address' => $this->faker->address,
            'provincy' => $this->faker->country,
            'city' => $this->faker->city,
            'zip_code' => $this->faker->postcode,
        ];
    }
}
