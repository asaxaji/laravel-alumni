<?php

namespace Database\Seeders;

use App\Models\Alumni;
use App\Models\Career;
use App\Models\Company;
use App\Models\Event;
use App\Models\Slider;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // Slider::factory(5)->create();
        Event::factory(6)->create();
        // Company::factory(3)->create();
        // Career::factory(12)->create();
        Alumni::factory(3)->create();
    }
}
