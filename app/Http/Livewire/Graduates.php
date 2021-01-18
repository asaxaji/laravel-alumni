<?php

namespace App\Http\Livewire;

use App\Models\Faculty;
use App\Models\Graduates as ModelsGraduates;
use App\Models\Prody;
use App\Models\University;
use Livewire\Component;

class Graduates extends Component
{
    public $university;
    public $faculty;
    public $prody;
    public $graduates;
    public $graduate;
    public $modalAddGraduates = false;

    public function showAddForm()
    {
        $this->modalAddGraduates = true;
    }

    public function addGraduates()
    {
        $this->university = University::first();
        $dataGraduates = [
            'user_id' => auth()->id(),
            'university_id' => (int) $this->university->id,
            'faculty_id' => (int) $this->graduate['faculty_id'],
            'prody_id' => (int) $this->graduate['prody_id'],
        ];
        foreach ($this->graduate as $gk => $gv) {
            $dataGraduates[$gk] = $gv;
        }
        ModelsGraduates::create($dataGraduates);
        $this->modalAddGraduates = false;
        return redirect()->route('profile.show');
    }

    public function deleteGraduate(int $id)
    {
        ModelsGraduates::find($id)->delete();
        return redirect()->route('profile.show');
    }

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
