@extends('frontend.layouts.app-layout')

@section('views')
    <!--== Slider Area Start ==-->
    <section id="slider-area">
        <div class="slider-active-wrap owl-carousel text-center text-md-left">
            <!-- Single Slide Item Start -->
            @foreach ($sliders as $sk => $sv)
                <div class="single-slide-wrap slide-bg-1">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-9">
                                <div class="slider-content">
                                    <h2>{{$sv->title}}</h2>
                                    <h3>{{$sv->subtitle}}</h3>
                                    {{-- <h3>Students of <span>Oxfornt University</span></h3> --}}
                                    <p>
                                        {{$sv->excerpt}}
                                    </p>
                                    @if (!empty($sv->link))
                                        <div class="slider-btn">
                                            <a href="{{$sv->link}}" target="{{isURL($sv->link) ? '_blank' : '_self'}}" class="btn btn-brand smooth-scroll">our mission</a>
                                        </div>
                                    @endif
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
            <!-- Single Slide Item End -->
        </div>

        <!-- Social Icons Area Start -->
        <div class="social-networks-icon">
            <ul>
                <li><a href="#"><i class="fa fa-facebook"></i> <span>7.2k Likes</span></a></li>
                <li><a href="#"><i class="fa fa-twitter"></i> <span>3.2m Followers</span></a></li>
                <li><a href="#"><i class="fa fa-pinterest"></i> <span>7.2k Likes</span></a></li>
                <li><a href="#"><i class="fa fa-youtube"></i> <span>2.2k Subscribers</span></a></li>
            </ul>
        </div>
        <!-- Social Icons Area End -->
    </section>
    <!--== Slider Area End ==-->

    <!--== Upcoming Event Area Start ==-->
    <section id="upcoming-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="upcoming-event-wrap">
                        <div class="up-event-titile">
                            <h3>Upcoming event</h3>
                        </div>
                        <div class="upcoming-event-content owl-carousel">
                            @forelse ($events as $ek => $ev)
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
                            @empty
                            @endforelse
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--== Upcoming Event Area End ==-->

    <!--== About Area Start ==-->
    <section id="about-area" class="section-padding">
        <div class="about-area-wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-lg-10 ml-auto">
                        <div class="about-content-wrap">
                            <div class="section-title text-center text-lg-left">
                                <h2>Tentang Kami</h2>
                            </div>

                            <div class="about-thumb">
                                <img src="http://placehold.it/1440x1018" alt="" class="img-fluid">
                            </div>

                            <p>There are many company Lorem ipsm dolor sitg amet, csetur adipicing elit, sed do eiusmod
                                tempor dncint ut labore et dolore magna alis enim ad minim veniam, quis csetur adipicing
                                elit, sed do eiusmod tempor dncint ut labore et dolore magna alis enim ad minim veniam,
                                quis nostrud exercitation ullamco.</p>
                            <p>There are many company Lorem ipsm dolor sitg amet, csetur adipicing elit, sed do eiusmod
                                tempor dncint ut labore et dolore magna alis enim ad minim veniam, quis nostrud
                                exercitation ullamco.</p>
                            <a href="about.html" class="btn btn-brand about-btn">know more</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--== About Area End ==-->

    <!--== Our Responsibility Area Start ==-->
    <section id="responsibility-area" class="section-padding">
        <div class="container">
            <!--== Section Title Start ==-->
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="section-title">
                        <h2>Our Responsibility</h2>
                    </div>
                </div>
            </div>
            <!--== Section Title End ==-->

            <!--== Responsibility Content Wrapper ==-->
            <div class="row text-center text-sm-left">
                <!--== Single Responsibility Start ==-->
                <div class="col-lg-3 col-sm-6">
                    <div class="single-responsibility">
                        <img src="{{asset('assets/img/responsibility/01.png')}}" alt="Responsibility">
                        <h4>Scholarship</h4>
                        <p>De create building thinking about your requirment and latest treand on our marketplace area
                        </p>
                    </div>
                </div>
                <!--== Single Responsibility End ==-->

                <!--== Single Responsibility Start ==-->
                <div class="col-lg-3 col-sm-6">
                    <div class="single-responsibility">
                        <img src="{{asset('assets/img/responsibility/02.png')}}" alt="Responsibility">
                        <h4>Help Current Students</h4>
                        <p>De create building thinking about your requirment and latest treand on our marketplace area
                        </p>
                    </div>
                </div>
                <!--== Single Responsibility End ==-->

                <!--== Single Responsibility Start ==-->
                <div class="col-lg-3 col-sm-6">
                    <div class="single-responsibility">
                        <img src="{{asset('assets/img/responsibility/03.png')}}" alt="Responsibility">
                        <h4>Help Our University</h4>
                        <p>De create building thinking about your requirment and latest treand on our marketplace area
                        </p>
                    </div>
                </div>
                <!--== Single Responsibility End ==-->

                <!--== Single Responsibility Start ==-->
                <div class="col-lg-3 col-sm-6">
                    <div class="single-responsibility">
                        <img src="{{asset('assets/img/responsibility/04.png')}}" alt="Responsibility">
                        <h4>Build Our Community</h4>
                        <p>De create building thinking about your requirment and latest treand on our marketplace area
                        </p>
                    </div>
                </div>
                <!--== Single Responsibility End ==-->
            </div>
            <!--== Responsibility Content Wrapper ==-->
        </div>
    </section>
    <!--== Our Responsibility Area End ==-->

    <!--== Job Opportunity Area Start ==-->
    <section id="job-opportunity" class="section-padding">
        <div class="container">
            <!--== Section Title Start ==-->
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="section-title">
                        <h2>Recent Jobs</h2>
                    </div>
                </div>
            </div>
            <!--== Section Title End ==-->

            <!--== Job opportunity Wrapper ==-->
            <div class="job-opportunity-wrapper">
                <div class="row">
                    <!--== Single Job opportunity Start ==-->
                    @foreach ($careers as $ck => $cv)
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
                    @endforeach
                    <!--== Single Job opportunity End ==-->
                </div>

                <div class="row">
                    <div class="col-lg-12 text-center">
                        <a href="career.html" class="btn btn-brand btn-loadmore">All job list</a>
                    </div>
                </div>
            </div>
            <!--== Job opportunity Wrapper ==-->
        </div>
    </section>
    <!--== Job Opportunity Area End ==-->

    <!--== Gallery Area Start ==-->
    <section id="gallery-area" class="section-padding">
        <div class="container">
            <!--== Section Title Start ==-->
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="section-title">
                        <h2>Our gallery</h2>
                    </div>
                </div>
            </div>
            <!--== Section Title End ==-->

            <!--== Gallery Container Warpper ==-->
            <div class="gallery-content-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <!-- Gallery Menu Start -->
                        <div class="gallery-menu text-center">
                            <span class="active" data-filter="*">All</span>
                            <span data-filter=".old">Old Memories</span>
                            <span data-filter=".event">Event</span>
                            <span data-filter=".pic">Our Picnic</span>
                            <span class="d-none d-sm-inline-block" data-filter=".recent">Recent</span>
                        </div>
                        <!-- Gallery Menu End -->

                        <!-- Gallery Item content Start -->
                        <div class="row gallery-gird">
                            <!-- Single Gallery Start -->
                            <div class="col-lg-3  col-sm-6 recent event">
                                <div class="single-gallery-item gallery-bg-1">
                                    <div class="gallery-hvr-wrap">
                                        <div class="gallery-hvr-text">
                                            <h4>University Cumpus</h4>
                                            <p class="gallery-event-date">28 Oct, 2018</p>
                                        </div>
                                        <a href="{{asset('assets/img/gallery/gellary-img-1.jpg')}}" class="btn-zoom image-popup">
                                            <img src="{{asset('assets/img/zoom-icon.png')}}" alt="a">
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <!-- Single Gallery End -->

                            <!-- Single Gallery Start -->
                            <div class="col-lg-3  col-sm-6 old event pic">
                                <div class="single-gallery-item video gallery-bg-2">
                                    <a href="https://player.vimeo.com/video/140182080?title=0&amp;portrait=0&amp;byline=0&amp;autoplay=1&amp;loop=1"
                                        class="btn btn-video-play video-popup"><i class="fa fa-play"></i></a>
                                </div>
                            </div>
                            <!-- Single Gallery End -->

                            <!-- Single Gallery Start -->
                            <div class="col-lg-3  col-sm-6 recent pic">
                                <div class="single-gallery-item gallery-bg-3">
                                    <div class="gallery-hvr-wrap">
                                        <div class="gallery-hvr-text">
                                            <h4>University Cumpus</h4>
                                            <p class="gallery-event-date">28 Oct, 2018</p>
                                        </div>
                                        <a href="{{asset('assets/img/gallery/gellary-img-3.jpg')}}" class="btn-zoom image-popup">
                                            <img src="{{asset('assets/img/zoom-icon.png')}}" alt="a">
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <!-- Single Gallery End -->

                            <!-- Single Gallery Start -->
                            <div class="col-lg-3  col-sm-6 old">
                                <div class="single-gallery-item gallery-bg-4">
                                    <div class="gallery-hvr-wrap">
                                        <div class="gallery-hvr-text">
                                            <h4>University Cumpus</h4>
                                            <p class="gallery-event-date">28 Oct, 2018</p>
                                        </div>
                                        <a href="{{asset('assets/img/gallery/gellary-img-4.jpg')}}" class="btn-zoom image-popup">
                                            <img src="{{asset('assets/img/zoom-icon.png')}}" alt="a">
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <!-- Single Gallery End -->

                            <!-- Single Gallery Start -->
                            <div class="col-lg-3  col-sm-6 pic event">
                                <div class="single-gallery-item gallery-bg-5">
                                    <div class="gallery-hvr-wrap">
                                        <div class="gallery-hvr-text">
                                            <h4>University Cumpus</h4>
                                            <p class="gallery-event-date">28 Oct, 2018</p>
                                        </div>
                                        <a href="{{asset('assets/img/gallery/gellary-img-5.jpg')}}" class="btn-zoom image-popup">
                                            <img src="{{asset('assets/img/zoom-icon.png')}}" alt="a">
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <!-- Single Gallery End -->

                            <!-- Single Gallery Start -->
                            <div class="col-lg-3  col-sm-6 old recent">
                                <div class="single-gallery-item gallery-bg-6">
                                    <div class="gallery-hvr-wrap">
                                        <div class="gallery-hvr-text">
                                            <h4>University Cumpus</h4>
                                            <p class="gallery-event-date">28 Oct, 2018</p>
                                        </div>
                                        <a href="{{asset('assets/img/gallery/gellary-img-6.jpg')}}" class="btn-zoom image-popup">
                                            <img src="{{asset('assets/img/zoom-icon.png')}}" alt="a">
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <!-- Single Gallery End -->

                            <!-- Single Gallery Start -->
                            <div class="col-lg-3  col-sm-6 pic">
                                <div class="single-gallery-item video gallery-bg-7">
                                    <a href="https://player.vimeo.com/video/181545195?title=0&amp;portrait=0&amp;byline=0&amp;autoplay=1&amp;loop=1"
                                        class="btn btn-video-play video-popup"><i class="fa fa-play"></i></a>
                                </div>
                            </div>
                            <!-- Single Gallery End -->

                            <!-- Single Gallery Start -->
                            <div class="col-lg-3  col-sm-6 pic recent old">
                                <div class="single-gallery-item gallery-bg-8">
                                    <div class="gallery-hvr-wrap">
                                        <div class="gallery-hvr-text">
                                            <h4>University Cumpus</h4>
                                            <p class="gallery-event-date">28 Oct, 2018</p>
                                        </div>
                                        <a href="{{asset('assets/img/gallery/gellary-img-8.jpg')}}" class="btn-zoom image-popup">
                                            <img src="{{asset('assets/img/zoom-icon.png')}}" alt="a">
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <!-- Single Gallery End -->
                        </div>
                        <!-- Gallery Item content End -->
                    </div>
                </div>
            </div>
            <!--== Gallery Container Warpper==-->
        </div>
    </section>
    <!--== Gallery Area Start ==-->

    <!--== Blog Area Start ==-->
    <section id="blog-area" class="section-padding">
        <div class="container">
            <!--== Section Title Start ==-->
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="section-title">
                        <h2>Recent News</h2>
                    </div>
                </div>
            </div>
            <!--== Section Title End ==-->

            <!--== Blog Content Wrapper ==-->
            <div class="row">
                <!--== Single Blog Post start ==-->
                @for ($i = 0; $i < 3; $i++)
                    <div class="col-lg-4 col-md-6">
                        <article class="single-blog-post">
                            <figure class="blog-thumb">
                                <div class="blog-thumbnail">
                                    <img src="https://images.pexels.com/photos/159866/books-book-pages-read-literature-159866.jpeg" alt="Blog" class="img-fluid">
                                </div>
                                <figcaption class="blog-meta clearfix">
                                    <a href="{{route('blog.show', ['detail'])}}" class="author">
                                        <div class="author-pic">
                                            <img src="{{asset('storage/users/default.png')}}" alt="Author">
                                        </div>
                                        <div class="author-info">
                                            <h5>Daney williams</h5>
                                            <p>2 hours Ago</p>
                                        </div>
                                    </a>
                                    <div class="like-comm pull-right">
                                        <a href="#"><i class="fa fa-comment-o"></i>77</a>
                                        <a href="#"><i class="fa fa-heart-o"></i>12</a>
                                    </div>
                                </figcaption>
                            </figure>

                            <div class="blog-content">
                                <h3><a href="{{route('blog.show', ['detail'])}}">Recently we create a maassive project that</a></h3>
                                <p>This is a big project of our company, we are happy to completed this type projec which
                                    are
                                    get world famous award</p>
                                <a href="{{route('blog.show', ['detail'])}}" class="btn btn-brand">More</a>
                            </div>
                        </article>
                    </div>
                @endfor
                <!--== Single Blog Post End ==-->
            </div>
            <!--== Blog Content Wrapper ==-->
        </div>
    </section>
    <!--== Blog Area EndBlog ==-->

    <!--== FunFact Area Start ==-->
    <section id="funfact-area">
        <div class="container-fluid">
            <div class="row text-center">
                <!--== Single FunFact Start ==-->
                <div class="col-lg-3 col-sm-6">
                    <div class="single-funfact-wrap">
                        <div class="funfact-icon">
                            <img src="{{asset('assets/img/fun-fact/user.svg')}}" alt="Funfact">
                        </div>
                        <div class="funfact-info">
                            <h5 class="funfact-count">4025</h5>
                            <p>Members</p>
                        </div>
                    </div>
                </div>
                <!--== Single FunFact End ==-->

                <!--== Single FunFact Start ==-->
                <div class="col-lg-3 col-sm-6">
                    <div class="single-funfact-wrap">
                        <div class="funfact-icon">
                            <img src="{{asset('assets/img/fun-fact/picture.svg')}}" alt="Funfact">
                        </div>
                        <div class="funfact-info">
                            <h5 class="funfact-count">8725</h5>
                            <p>Photos</p>
                        </div>
                    </div>
                </div>
                <!--== Single FunFact End ==-->

                <!--== Single FunFact Start ==-->
                <div class="col-lg-3 col-sm-6">
                    <div class="single-funfact-wrap">
                        <div class="funfact-icon">
                            <img src="{{asset('assets/img/fun-fact/event.svg')}}" alt="Funfact">
                        </div>
                        <div class="funfact-info">
                            <h5><span class="funfact-count">231</span>+</h5>
                            <p>Events</p>
                        </div>
                    </div>
                </div>
                <!--== Single FunFact End ==-->

                <!--== Single FunFact Start ==-->
                <div class="col-lg-3 col-sm-6">
                    <div class="single-funfact-wrap">
                        <div class="funfact-icon">
                            <img src="{{asset('assets/img/fun-fact/medal.svg')}}" alt="Funfact">
                        </div>
                        <div class="funfact-info">
                            <h5><span class="funfact-count">32</span>+</h5>
                            <p>Awards</p>
                        </div>
                    </div>
                </div>
                <!--== Single FunFact End ==-->
            </div>
        </div>
    </section>
    <!--== FunFact Area End ==-->
@endsection
