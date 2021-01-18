<?php

namespace App\Http\Livewire;

use App\Models\WorkExperience;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Livewire\Component;

class WorkExperiences extends Component
{
    public $user;
    public $works;
    public $addWorkExperiences = false;
    public $work;

    public function mount()
    {
        $this->user = auth()->user();
        $this->works = $this->user->workExperiences;
    }

    public function addWorkExperience()
    {
        $this->addWorkExperiences = true;
    }

    public function addWorks()
    {
        WorkExperience::create(Arr::add($this->work, 'user_id', auth()->id()));
        $this->addWorkExperiences = false;
        return redirect()->route('profile.show');
    }

    public function deleteWork(int $id)
    {
        WorkExperience::find($id)->delete();
        return redirect()->route('profile.show');
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
