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
            <div class="col-12">
                <div class="swiper-container swiper-services">
                    <div class="swiper-wrapper">
                        @foreach ($services as $ks => $vs)
                            <div class="swiper-slide">
                                <a href="{{route('service.show', [$vs->slug])}}">
                                    <div class="single-responsibility text-center">
                                        <img src="{{asset('storage/'.$vs->image)}}" alt="Responsibility">
                                        <h4>{{$vs->title}}</h4>
                                        <p>
                                            {{$vs->excerpt}}
                                        </p>
                                    </div>
                                </a>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
            <!--== Single Responsibility End ==-->
        </div>
        <!--== Responsibility Content Wrapper ==-->
    </div>
</section>