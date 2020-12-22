<?php

namespace Database\Factories;

use App\Models\Event;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\Factory;

class EventFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Event::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $title = $this->faker->name();
        
        return [
            'image' => $this->faker->image('public/storage/faker', 700, 390, null, false),
            'title' => $title,
            'slug' => slugify($title),
            'excerpt' => $this->faker->realText(),
            'body' => '<h2>Details all Thing About This Event</h2><p>Aenean viverra rhoncus pede. Phasellus leo dolor, tempus non, auctor endrerit quis, nisi. Fusce neque. Donec vitae orci sed dolor rutrum auctor. Sed ngilla mauris sit amet nibhr, tempus non, auctor endrerit quis, nisi.</p>',
            'location' => 'https://g.page/hungrypedia?share',
            'published' => true,
            'start_at' => Carbon::now()->addDays(rand(2, 5)),
        ];
    }
}
