<?php

namespace App\Http\Livewire\Frontend;

use App\Models\Career;
use App\Models\Event;
use App\Models\Gallery;
use App\Models\User;
use Livewire\Component;

class FunFact extends Component
{
    public $countType;

    public function mount()
    {
        $this->countType = [];
        $this->countType = [
            'user' => User::count(),
            'gallery' => Gallery::wherePublished(true)->count(),
            'event' => Event::orderByDesc('created_at')->count(),
            'career' => Career::wherePublished(true)->count(),
        ];
    }

    public function render()
    {
        return view('frontend.pages.home.funfact');
    }
}
