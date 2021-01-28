<?php

namespace App\Http\Livewire\Popup;

use App\Models\PopupMessage;
use Livewire\Component;

class Anouncement extends Component
{
    public $popup;

    public function mount()
    {
        $pm = PopupMessage::whereIsPublish(true)->get();
        $this->popup = [
            'image' => ($pm->count() > 0) ? $pm->last()->image : null
        ];
    }

    public function render()
    {
        return view('livewire.popup.anouncement');
    }
}
