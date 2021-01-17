<?php

namespace App\Http\Livewire;

use Illuminate\Http\Request;
use Livewire\Component;

class WorkExperiences extends Component
{
    public $user;
    public $works;

    public function mount()
    {
        $this->user = auth()->user();
        $this->works = $this->user->workExperiences;
    }

    public function updateWorks(Request $request)
    {
        dd($request->all());
    }

    /**
     * Render the component.
     *
     * @return \Illuminate\View\View
     */
    public function render()
    {
        return view('profile.work-experiences');
    }
}
