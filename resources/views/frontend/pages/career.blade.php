@extends('frontend.layouts.app-layout')

@section('views')
    <!--== Page Title Area Start ==-->
    {{-- <section id="page-title-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 m-auto text-center">
                    <div class="page-title-content">
                        <h1 class="h2">Job Opportunity</h1>
                        <p>Alumni Needs enables you to harness the power of your alumni network. Whatever may be the
                            need</p>
                        <a href="#page-content-wrap" class="btn btn-brand smooth-scroll">Let&apos;s See</a>
                    </div>
                </div>
            </div>
        </div>
    </section> --}}
    <!--== Page Title Area End ==-->

    <!--== Single Album Page Content Start ==-->
    <section id="page-content-wrap">
        <div class="career-page-wrapper">
            <div class="career-page-topbg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-10 m-auto">
                            <img src="{{asset('assets/img/careerbg.png')}}" class="img-fluid" alt="career">
                        </div>
                    </div>
                </div>
            </div>

            <div class="career-page-content-wrap section-padding">
                <div class="container">

                    {{-- <div class="row">
                        <div class="col-lg-12">
                            <div class="event-filter-area">
                                <form action="index.html" class="form-inline">
                                    <select name="cat" id="year">
                                        <option selected>Categories</option>
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
                    </div> --}}

                    <div class="job-opportunity-wrapper">
                        <div class="row">
                            @forelse ($careers as $ck => $cv)
                                <div class="col-lg-4 col-sm-6 text-center">
                                    <div class="single-job-opportunity">
                                        <div class="job-opportunity-text">
                                            <div class="job-oppor-logo">
                                                <div class="display-table">
                                                    <div class="display-table-cell">
                                                        <img src="{{('storage/faker/'.$cv->companyId->logo)}}" alt="{{$cv->title}}" title="{{$cv->companyId->name}}">
                                                    </div>
                                                </div>
                                            </div>
                                            <h3><a href="#">Loker Posisi {{$cv->title}}</a></h3>
                                            <p><b>PT. {{$cv->companyId->name}}</b></p>
                                            <p>
                                                {{$cv->city}}, {{$cv->country}}
                                            </p>
                                        </div>
                                        @if ($cv->end_at->gt(now()))
                                            <a href="{{route('career.show', [$cv->slug])}}" class="btn btn-job">Detail</a>
                                        @else
                                            <a href="#" class="btn btn-job btn-expired disabled">Expired</a>
                                        @endif
                                    </div>
                                </div>
                            @empty
                                <h3 class="text-center">Tidak ada data</h3>
                            @endforelse
                        </div>

                        <!-- Pagination Start -->
                        <div class="row">
                            <div class="col-lg-12">
                                {{$careers->links()}}
                            </div>
                        </div>
                        <!-- Pagination End -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--== Single Album Page Content End ==-->
@endsection
