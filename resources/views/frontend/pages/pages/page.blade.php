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
                    <!-- Blog content Area Start -->
                    <div class="col-lg-12 m-auto">
                        <article class="single-blog-content-wrap">
                            <header class="article-head">
                                <div class="single-blog-thumb">
                                    <img src="{{asset('storage/'.$page->image)}}" alt="{{$page->title}}" class="img-fluid">
                                </div>
                                <div class="single-blog-meta">
                                    <h2>{{$page->title}}</h2>
                                    <div class="posting-info">
                                        <a href="#">{{$page->created_at->format('d M Y')}}</a> &#x2022; Posted by: <a href="#">Admin</a>
                                    </div>
                                </div>
                            </header>
                            <section class="blog-details">
                                {!!$page->body!!}
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
