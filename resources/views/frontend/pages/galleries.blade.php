@extends('frontend.layouts.app-layout')

@section('views')
    <!--== Page Title Area Start ==-->
    {{-- <section id="page-title-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 m-auto text-center">
                    <div class="page-title-content">
                        <h1 class="h2">List Blog</h1>
                        <p>
                            Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veniam non perspiciatis mollitia obcaecati rem natus!
                        </p>
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
                    <div class="col-lg-12">
                        <div class="blog-page-contant-start">
                            <div class="row">
                                <!--== Single Blog Post start ==-->
                                @foreach ($galleries as $kb => $vb)
                                    <div class="col-lg-4 col-md-4 my-4">
                                        <article class="single-blog-post">
                                            @php
                                                $images = json_decode($vb->image);
                                            @endphp
                                            @if (count($images) > 0)
                                                <figure class="blog-thumb">
                                                    <div class="blog-thumbnail">
                                                        <img src="{!!asset('storage/'.array_shift($images))!!}" alt="{{$vb->name}}" class="img-fluid">
                                                    </div>
                                                </figure>
                                            @endif

                                            <div class="blog-content">
                                                <h3><a href="{{route('gallery.show', [$vb->slug])}}">{{Str::limit($vb->name, 20)}}</a></h3>
                                                <a href="{{route('gallery.show', [$vb->slug])}}" class="btn btn-brand">Lihat</a>
                                            </div>
                                        </article>
                                    </div>
                                @endforeach
                                <!--== Single Blog Post End ==-->
                            </div>

                            <!-- Pagination Start -->
                            <div class="row">
                                <div class="col-lg-12">
                                    {{$galleries->links()}}
                                </div>
                            </div>
                            <!-- Pagination End -->
                        </div>
                    </div>
                    <!-- Blog content Area End -->
                </div>
            </div>
        </div>
    </div>
    <!--== Blog Page Content End ==-->
@endsection
