<?php

namespace Database\Factories;

use App\Models\Company;
use Illuminate\Database\Eloquent\Factories\Factory;

class CompanyFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Company::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $name = $this->faker->name();
        return [
            'logo' => $this->faker->image('public/storage/faker', 349, 248, null, false),
            'name' => $name,
            'slug' => slugify($name),
            'email' => 'company@mail.com',
            'phone' => $this->faker->phoneNumber,
            'address' => $this->faker->address,
            'gmaps' => 'https://g.page/hungrypedia?share',
            'body' => '<h2>Details all Thing About This Event</h2><p>Aenean viverra rhoncus pede. Phasellus leo dolor, tempus non, auctor endrerit quis, nisi. Fusce neque. Donec vitae orci sed dolor rutrum auctor. Sed ngilla mauris sit amet nibhr, tempus non, auctor endrerit quis, nisi.</p>',
        ];
    }
}
