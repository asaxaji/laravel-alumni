<?php

namespace App\Http\Livewire\Blog;

use App\Models\Post;
use Mediconesystems\LivewireDatatables\Column;
use Mediconesystems\LivewireDatatables\DateColumn;
use Mediconesystems\LivewireDatatables\Http\Livewire\LivewireDatatable;
use Mediconesystems\LivewireDatatables\NumberColumn;

class DatatableComponent extends LivewireDatatable
{
    public $model = Post::class;

    public function builder()
    {
        return Post::query()->where('author_id', auth()->id());
    }

    public function columns()
    {
        return [
            NumberColumn::name('id')
                ->label('ID'),
            Column::name('title')
                ->label('Judul')
                ->searchable(),
            DateColumn::name('created_at')
                ->label('Tgl Dibuat')
                ->format('d-m-Y')
                ->searchable(),
            Column::callback(['id', 'slug'], function ($id, $slug) {
                return view('livewire.blog.browse-action', compact([
                    'id',
                    'slug'
                ]));
            })
        ];
    }
}
