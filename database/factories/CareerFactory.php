<?php

namespace Database\Factories;

use App\Models\Career;
use App\Models\Company;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\Factory;

class CareerFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Career::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $company = Company::first();
        $title = $this->faker->streetName();
        return [
            'company_id' => $company->id,
            'title' => $title,
            'slug' => slugify($title),
            'body' => '<h2>Details all Thing About This Event</h2><p>Aenean viverra rhoncus pede. Phasellus leo dolor, tempus non, auctor endrerit quis, nisi. Fusce neque. Donec vitae orci sed dolor rutrum auctor. Sed ngilla mauris sit amet nibhr, tempus non, auctor endrerit quis, nisi.</p>',
            'city' => $this->faker->city,
            'country' => $this->faker->country,
            'published' => true,
            'end_at' => Carbon::now()->addDays(rand(10, 20)),
        ];
    }
}
