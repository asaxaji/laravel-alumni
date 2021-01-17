<?php

namespace App\Http\Livewire;

use App\Models\City;
use Asantibanez\LivewireSelect\LivewireSelect;
use Illuminate\Support\Collection;

class CityModelSelect extends LivewireSelect
{
    public function options($param = null): Collection
    {
        $res = [];
        $cisties = City::orderByDesc('id')->get();
        $map = $cisties->map(function ($city) use ($res) {
            $res['value'] = $city->nama;
            $res['description'] = $city->nama;
            return $res;
        });
        return $map;
    }
}
