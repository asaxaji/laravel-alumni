<?php

use Carbon\Carbon;
use Illuminate\Support\Arr;

if (!function_exists('isURL')) {
    function isURL(String $url)
    {
        return filter_var($url, FILTER_VALIDATE_URL);
    }
}

if (!function_exists('slugify')) {
    function slugify($text)
    {
        // replace non letter or digits by -
        $text = preg_replace('~[^\pL\d]+~u', '-', $text);
        // transliterate
        $text = iconv('utf-8', 'us-ascii//TRANSLIT', $text);
        // remove unwanted characters
        $text = preg_replace('~[^-\w]+~', '', $text);
        // trim
        $text = trim($text, '-');
        // remove duplicate -
        $text = preg_replace('~-+~', '-', $text);
        // lowercase
        $text = strtolower($text);
        if (empty($text)) {
            return 'n-a';
        }
        return $text;
    }
}

if (!function_exists('dateFormat')) {
    function dateFormat(String $date)
    {
        return Carbon::parse($date);
    }
}

if (!function_exists('parseImages')) {
    function parseImages(array $array, array $add = [], array $except = []) {
        if (count($add) > 0) $array = Arr::collapse($array, $add);
        if (count($except) > 0) $array = Arr::except($array, $except);
        return $array;
    }
}

if (!function_exists('getThumbImageGalleries')) {
    function getThumbImageGalleries($array) {
        return $array->map(function ($map) {
            return (object)[
                'name' => $map->name,
                'slug' => $map->slug,
                'image' => $map->image,
                'created_at' => $map->created_at,
            ];
        });
    }
}