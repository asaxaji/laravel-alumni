@extends('frontend.layouts.app-layout')

@section('views')
    <!--== Page Title Area Start ==-->
    {{-- <section id="page-title-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 m-auto text-center">
                    <div class="page-title-content">
                        <h1 class="h2">Faculty Details</h1>
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
                    <div class="col-lg-10 m-auto">
                        <article class="single-blog-content-wrap">
                            <header class="article-head">
                                <div class="single-blog-thumb">
                                    <img src="https://bkpsdm.bandaacehkota.go.id/site/wp-content/uploads/2020/05/Struktur-Organisasi-Badan-Kepegawaian-dan-Pengembangan-Sumber-Daya-Manusia-Kota-Banda-Aceh.png" class="img-fluid img-zoomify" alt="Blog">
                                </div>
                                <div class="single-blog-meta">
                                    <h2><b>Fakultas Detail</b></h2>
                                </div>
                            </header>
                            <section class="blog-details">
                                <p>Lorem ipsum condimentum ligula. Fusce fringilla magna non sapien dictum, eget
                                    faucibus
                                    dui maximus. Donec fringilla vel mi consequat tempor. </p>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis diam erat.
                                    Duvelit
                                    lecspoe a blandit sit amet, tempor at lorem. Donec ultricies, lorem sed ultrices
                                    interdum, leo luctfiiius sem, vel vulputate diam ipsum sed lorem. Donec tempor arcu
                                    nisl, et molestie massa hhisque ut. Nunc at rutrum leo. Mauris metus mauris, tridd.
                                </p>
                                <p>Mauris tempus erat laoreet turpis lobortis, eu tincidunt erat fermentum. Aliquam nonh
                                    edunt urna. Integer tincidunt nec nisl vitae ullamcorper. Proin sed ultrices erat.
                                    Praesent vdd warius ultricemassa at faucibus. Aenean dignissim, orci sed faucibus
                                    pharetra, dui mi dir ssim tortor, sit amet ntum mi ligula sit amet augue.
                                    Pellentesqs
                                    placerat. </p>
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

@section('headers')
    <link rel="stylesheet" href="{{asset('assets/vendor/zoomify/zoomify.css')}}">
@endsection

@section('scripts')
    <script src="{{asset('assets/vendor/zoomify/zoomify.js')}}"></script>
    <script>
        $(function(){
            $('img.img-zoomify').zoomify();
        }(window.jQuery))
    </script>
@endsection