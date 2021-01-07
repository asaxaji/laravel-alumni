<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Career;
use App\Models\Event;
use App\Models\Gallery;
use App\Models\Service;
use App\Models\Slider;
use Carbon\Carbon;
use Illuminate\Http\Request;
use TCG\Voyager\Models\Post;

class HomeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $sliders = Slider::wherePublished(true)->orderByDesc('created_at')->get();
        $events = Event::wherePublished(true)
            ->where('start_at', '>=', Carbon::now())
            ->orderByDesc('created_at')
            ->limit(3)
            ->get();
        $careers = Career::with('companyId')
            ->wherePublished(true)
            ->orderByDesc('created_at')
            ->get();
        $galleries = Gallery::orderByDesc('created_at')->limit(15)->get();
        $blogs = Post::orderByDesc('created_at')->whereStatus('PUBLISHED')->limit(6)->get();
        $services = Service::wherePublish(true)->orderByDesc('created_at')->get();
        return view('frontend.pages.home.index', compact([
            'sliders',
            'events',
            'careers',
            'galleries',
            'blogs',
            'services'
        ]));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function gallery()
    {
        $galleries = Gallery::wherePublished(true)->orderByDesc('created_at')->paginate(15);
        return view('frontend.pages.galleries', compact([
            'galleries',
        ]));
    }
}
