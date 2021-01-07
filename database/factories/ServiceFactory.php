<?php

namespace Database\Factories;

use App\Models\Service;
use Illuminate\Database\Eloquent\Factories\Factory;

class ServiceFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Service::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $image = $this->faker->randomElement(['01', '02', '03', '04']);
        $title = $this->faker->name();
        return [
            'image' => 'services/'.$image.'.png',
            'title' => $title,
            'slug' => slugify($title),
            'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
            'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>',
            'url' => null,
            'publish' => true
        ];
    }
}
