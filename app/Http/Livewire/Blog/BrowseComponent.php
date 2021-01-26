<?php

namespace App\Http\Livewire\Blog;

use Livewire\Component;

class BrowseComponent extends Component
{
    public $showModal = false;

    public function render()
    {
        return view('livewire.blog.browse-component');
    }
}
