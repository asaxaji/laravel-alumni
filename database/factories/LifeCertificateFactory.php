<?php

namespace Database\Factories;

use App\Models\LifeCertificate;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

class LifeCertificateFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = LifeCertificate::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $user = User::whereEmail('risqir57@gmail.com')->first();
        return [
            'user_id' => $user->id,
            'image' => $this->faker->image('public/storage/faker', 700, 390, null, false),
            'title' => "Sertifikat {$this->faker->name}",
            'note' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione obcaecati natus eius exercitationem.'
        ];
    }
}
