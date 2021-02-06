@extends('frontend.layouts.app-layout')

@section('views')
    <!--== Page Title Area Start ==-->
    {{-- <section id="page-title-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 m-auto text-center">
                    <div class="page-title-content">
                        <h1 class="h2">About Us</h1>
                        <p>Alumni Needs enables you to harness the power of your alumni network. Whatever may be the
                            need</p>
                        <a href="#page-content-wrap" class="btn btn-brand smooth-scroll">Let&apos;s See</a>
                    </div>
                </div>
            </div>
        </div>
    </section> --}}
    <!--== Page Title Area End ==-->

    <!--== Committee Page Content Start ==-->
    @if (!empty($about))
        <section id="page-content-wrap">
            <div class="about-page-content-wrap section-padding">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-11 m-auto">
                            <!-- Single about text start -->
                            <div class="single-about-text">
                                <img src="{{asset('storage/'.$about->image)}}" alt="About" class="img-fluid img-left">
                                <h2 class="h3">{{$about->title}}</h2>
                                {!!$about->body!!}
                            </div>
                            <!-- Single about text End -->
                        </div>
                    </div>
                </div>
            </div>
        </section>
    @endif
    <section id="page-content-wrap">
        <div class="committee-content-wrap section-padding">
            <div class="committee-member-list">
                <div class="container">
                    <div class="row">
                        <div class="col-12 text-center">
                            <div class="about-page-area-title">
                                <h2>Struktur Organisasi</h2>
                            </div>
                        </div>
                        @php
                            $images = json_decode($about->image_structures);
                        @endphp
                        @if (!empty($about) && is_array($images))
                            <div class="col-lg-4 col-sm-10 col-md-7 m-auto">
                                <div class="single-committee-member">
                                    <img src="{{asset('storage/'.array_shift($images))}}" class="img-fluid" alt="Committee">
                                    {{-- <h3>Bryan Watshon <span class="committee-deg">President</span></h3> --}}
                                </div>
                            </div>
                        @endif
                    </div>

                    <div class="row">
                        @forelse (parseImages($images, [], [0]) as $item)
                            <div class="col-lg-3 col-sm-6">
                                <div class="single-committee-member">
                                    <img src="{{asset('storage/'.$item)}}" class="img-fluid" alt="Committee">
                                </div>
                            </div>
                        @empty
                        @endforelse
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--== Committee Page Content End ==-->
@endsection