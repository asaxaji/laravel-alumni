<?php

namespace Database\Factories;

use App\Models\Slider;
use Illuminate\Database\Eloquent\Factories\Factory;

class SliderFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Slider::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'image' => $this->faker->image('public/storage/faker', 1918, 789, null, false),
            'title' => 'Ini judul',
            'subtitle' => $this->faker->name(),
            'excerpt' => $this->faker->realText(),
            'link' => '/',
            'published' => true
        ];
    }
}
