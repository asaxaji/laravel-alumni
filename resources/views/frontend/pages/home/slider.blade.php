<section id="slider-area">
    <div class="slider-active-wrap owl-carousel text-center text-md-left">
        <!-- Single Slide Item Start -->
        @foreach ($sliders as $sk => $sv)
            <div class="single-slide-wrap" style="background-image: url('{{asset('storage/'.$sv->image)}}')">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-9">
                            <div class="slider-content">
                                <h2>{{$sv->title}}</h2>
                                <h3>{{$sv->subtitle}}</h3>
                                <p>
                                    {{$sv->excerpt}}
                                </p>
                                @if (!empty($sv->link))
                                    <div class="slider-btn">
                                        <a href="{{isURL($sv->link) ? $sv->link : route('page.show', $sv->link)}}" target="{{isURL($sv->link) ? '_blank' : '_self'}}" class="btn btn-brand smooth-scroll">detail</a>
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