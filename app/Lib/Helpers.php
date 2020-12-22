<?php

if (!function_exists('isURL')) {
    function isURL(String $url)
    {
        return filter_var($url, FILTER_VALIDATE_URL);
    }
}