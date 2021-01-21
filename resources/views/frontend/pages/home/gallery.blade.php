<section id="gallery-area" class="section-padding bg-white">
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
                    {{-- <div class="gallery-menu text-center">
                        <span class="active" data-filter="*">All</span>
                        <span data-filter=".old">Old Memories</span>
                        <span data-filter=".event">Event</span>
                        <span data-filter=".pic">Our Picnic</span>
                        <span class="d-none d-sm-inline-block" data-filter=".recent">Recent</span>
                    </div> --}}
                    <!-- Gallery Menu End -->

                        <!-- Single Gallery Start -->
                        @foreach (getThumbImageGalleries($galleries) as $kg => $vg)
                            @php
                                $images = json_decode($vg->image);
                            @endphp
                            <div class="col-lg-3  col-sm-6 pic recent old">
                                <div class="single-gallery-item" style="background-image: url('{!!asset('storage/'.array_shift($images))!!}')">
                                    <div class="gallery-hvr-wrap">
                                        <div class="gallery-hvr-text">
                                            <h4>{{$vg->name}}</h4>
                                            <p class="gallery-event-date">{{$vg->created_at->format('d M Y')}}</p>
                                        </div>
                                        <a href="{{asset('gallery.show', $vg->slug)}}" class="btn-zoom image-popup">
                                            <img src="{{asset('assets/img/zoom-icon.png')}}" alt="a">
                                        </a>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                        <!-- Single Gallery End -->
                        <div class="col-12 text-center content-center mt-5">
                            <a href="{{route('gallery.index')}}" class="btn btn-brand about-btn">Lihat Semua</a>
                        </div>
                    </div>
                    <!-- Gallery Item content End -->
                </div>
            </div>
        </div>
        <!--== Gallery Container Warpper==-->
    </div>
</section>