<?php

namespace App\Http\Livewire\Form;

use App\Models\WorkExperience;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Livewire\Component;

class CareerForm extends Component
{
    public $career;

    public function mount()
    {
        $arrCareer = $this->career->toArray();
        $arrCareer['start_at'] = dateFormat($arrCareer['start_at'])->format('Y-m-d');
        $arrCareer['end_at'] = dateFormat($arrCareer['end_at'])->format('Y-m-d');
        $this->career = $arrCareer;
    }

    public function updateWorks()
    {
        $dataUser = Arr::except($this->career, [
            'id',
            'user_id',
            'created_at',
            'updated_at'
        ]);

        WorkExperience::find($this->career['id'])->update($dataUser);
    }

    public function render()
    {
        return view('profile.form.career-form');
    }
}
