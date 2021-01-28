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
                        <h5 class="funfact-count">{{$countType['user']}}</h5>
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
                        <h5 class="funfact-count">{{$countType['gallery']}}</h5>
                        <p>Gallery</p>
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
                        <h5><span class="funfact-count">{{$countType['event']}}</span></h5>
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
                        <h5><span class="funfact-count">{{$countType['career']}}</span></h5>
                        <p>Careers</p>
                    </div>
                </div>
            </div>
            <!--== Single FunFact End ==-->
        </div>
    </div>
</section>