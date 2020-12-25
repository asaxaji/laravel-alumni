@extends('frontend.layouts.app-layout')

@section('views')
    <!--== Page Title Area Start ==-->
    {{-- <section id="page-title-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 m-auto text-center">
                    <div class="page-title-content">
                        <h1 class="h2">All Event Archive</h1>
                        <p>Alumni Needs enables you to harness the power of your alumni network. Whatever may be the
                            need</p>
                        <a href="#page-content-wrap" class="btn btn-brand smooth-scroll">Let&apos;s See</a>
                    </div>
                </div>
            </div>
        </div>
    </section> --}}
    <!--== Page Title Area End ==-->

    <!--== Gallery Page Content Start ==-->
    <section id="page-content-wrap">
        <div class="event-page-content-wrap section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="event-filter-area">
                            <form action="index.html" class="form-inline">
                                <select name="year" id="year">
                                    <option selected>Year</option>
                                    <option>2018</option>
                                    <option>2017</option>
                                    <option>2016</option>
                                    <option>2015</option>
                                    <option>2014</option>
                                </select>

                                <select name="place" id="place">
                                    <option selected>Place</option>
                                    <option>Alabama</option>
                                    <option>Alaska</option>
                                    <option>Arizona</option>
                                    <option>Colorado</option>
                                    <option>Delaware</option>
                                </select>

                                <select name="type" id="type">
                                    <option selected>Type</option>
                                    <option>Meetup</option>
                                    <option>Seminar</option>
                                    <option>Get Together</option>
                                </select>

                                <button class="btn btn-brand">Filter</button>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12">
                        <div class="all-event-list">
                            <!-- Single Event Start -->
                            @foreach ($events as $ek => $ev)
                                <div class="single-upcoming-event">
                                    <div class="row">
                                        <div class="col-lg-5">
                                            <div class="up-event-thumb">
                                                <img src="{{asset('storage/faker/'.$ev->image)}}" class="img-fluid" alt="Upcoming Event">
                                                <h4 class="up-event-date">{{dateFormat($ev->start_at)->format('d M Y')}}</h4>
                                            </div>
                                        </div>

                                        <div class="col-lg-7">
                                            <div class="display-table">
                                                <div class="display-table-cell">
                                                    <div class="up-event-text">
                                                        <div class="event-countdown">
                                                            <div class="event-countdown-counter" data-date="{{dateFormat($ev->start_at)->format('Y/m/d')}}"></div>
                                                            <p>Remaining</p>
                                                        </div>
                                                        <h3><a href="{{route('event.show', [$ev->slug])}}">{{$ev->title}}</a></h3>
                                                        <p>{{$ev->excerpt}}</p>
                                                        <a href="{{route('event.show', [$ev->slug])}}" class="btn btn-brand btn-brand-dark">Detail</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                            <!-- Single Event End -->
                        </div>
                    </div>
                </div>

                <!-- Pagination Start -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="pagination-wrap text-center">
                            <nav>
                                <ul class="pagination">
                                    <li class="page-item"><a class="page-link" href="#"><i
                                                class="fa fa-angle-left"></i></a>
                                    </li>
                                    <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                    <li class="page-item"><a class="page-link" href="#">...</a></li>
                                    <li class="page-item"><a class="page-link" href="#">50</a></li>
                                    <li class="page-item"><a class="page-link" href="#"><i
                                                class="fa fa-angle-right"></i></a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
                <!-- Pagination End -->
            </div>
        </div>
    </section>
    <!--== Gallery Page Content End ==-->
@endsection
