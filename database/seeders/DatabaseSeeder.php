<?php

namespace Database\Seeders;

use App\Models\Alumni;
use App\Models\Career;
use App\Models\Company;
use App\Models\Event;
use App\Models\Graduates;
use App\Models\LifeCertificate;
use App\Models\Service;
use App\Models\Slider;
use App\Models\WorkExperience;
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
        // Event::factory(6)->create();
        // Company::factory(3)->create();
        // Career::factory(12)->create();
        // Alumni::factory(3)->create();
        // Service::factory(6)->create();
        Graduates::factory(1)->create();
        WorkExperience::factory(1)->create();
        LifeCertificate::factory(3)->create();
    }
}
