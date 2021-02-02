@extends('frontend.layouts.app-layout')

@section('views')
    <!--== Page Title Area Start ==-->
    {{-- <section id="page-title-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 m-auto text-center">
                    <div class="page-title-content">
                        <h1 class="h2">Blog Details</h1>
                        <p>Alumni Needs enables you to harness the power of your alumni network. Whatever may be the
                            need</p>
                        <a href="#page-content-wrap" class="btn btn-brand smooth-scroll">Let&apos;s See</a>
                    </div>
                </div>
            </div>
        </div>
    </section> --}}
    <!--== Page Title Area End ==-->

    <!--== Blog Page Content Start ==-->
    <div id="page-content-wrap">
        <div class="blog-page-content-wrap section-padding">
            <div class="container">
                <div class="row">
                    <!-- Sidebar Area Start -->
                    <div class="col-lg-4">

                        <div class="sidebar-area-wrap">
                            <!-- Single Sidebar Start -->
                            <div class="single-sidebar-wrap">
                                <div class="honorable-committee-list">
                                    <div class="row">
                                        <div class="col-lg-12 col-sm-12">
                                            <div class="single-committee-member m-0">
                                                <div class="commitee-thumb">
                                                    <img src="{{asset('storage/faker/'.$career->companyId->logo)}}" class="img-fluid" alt="Committee">
                                                </div>
                                                <h3 style="margin-top: -25px; padding: 10px 5px;"><span class="committee-deg">PT. {{$career->companyId->name}}</span></h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Single Sidebar End -->

                            <!-- Single Sidebar Start -->
                            <div class="single-sidebar-wrap">
                                {{-- <h4 class="sidebar-title">Categories</h4> --}}
                                <div class="sidebar-body">
                                    <ul class="career-unorderlist">
                                        <li><a href="{{$career->companyId->gmaps}}" target="_blank"><i class="fa fa-building mr-2"></i>{{$career->companyId->address}}</a></li>
                                        <li><a href="mailto:{{$career->companyId->email}}"><i class="fa fa-envelope-o mr-2"></i>{{$career->companyId->email}}</a></li>
                                        <li><a href="tel:{{$career->companyId->phone}}"><i class="fa fa-phone mr-2"></i>{{$career->companyId->phone}}</a></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- Single Sidebar End -->

                            <!-- Single Sidebar Start -->
                            @if (auth()->check())
                                <div class="single-sidebar-wrap">
                                    <div class="sidebar-body">
                                        <a href="{{route('career.update', $career->id)}}" class="btn btn-brand btn-block smooth-scroll">Lamar Mudah</a>
                                    </div>
                                </div>
                            @else
                                <div class="single-sidebar-wrap">
                                    <div class="sidebar-body">
                                        <a href="{{route('login')}}" class="btn btn-brand btn-block smooth-scroll">Masuk Untuk Melamar</a>
                                    </div>
                                </div>
                            @endif
                            <!-- Single Sidebar End -->
                        </div>
                    </div>
                    <!-- Sidebar Area End -->

                    <!-- Blog content Area Start -->
                    <div class="col-lg-8">
                        <article class="single-blog-content-wrap">
                            <header class="article-head">
                                <div class="single-blog-meta">
                                    <h2>Lowongan Kerja {{$career->title}}</h2>
                                    <div class="posting-info">
                                        <a href="#">{{$career->created_at->format('d M Y')}}</a> &#x2022; Posted by: <a href="#">Admin</a>
                                    </div>
                                </div>
                            </header>
                            <section class="blog-details">
                                {!!$career->body!!}
                            </section>
                        </article>
                    </div>
                    <!-- Blog content Area End -->
                </div>
            </div>
        </div>
    </div>
    <!--== Blog Page Content End ==-->
@endsection
