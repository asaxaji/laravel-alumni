<?php

namespace App\Http\Livewire;

use App\Models\Faculty;
use App\Models\Prody;
use Livewire\Component;

class Graduates extends Component
{
    public $faculty;

    public $prody;

    public $graduates;

    public function mount()
    {
        $faculty = Faculty::orderByDesc('created_at')->get();
        $prody = Prody::orderByDesc('created_at')->get();
        $graduates = auth()->user()->graduates;
        $this->faculty = $faculty;
        $this->prody = $prody;
        $this->graduates = $graduates;
    }

    public function render()
    {
        return view('profile.graduates');
    }
}
