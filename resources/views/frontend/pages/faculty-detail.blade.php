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
        <div class="directory-page-content-warp blog-page-content-wrap section-padding">
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
                    <div class="col-lg-12 text-center my-5">
                        <div class="directory-text-wrap">
                            <h2>List Alumni Nama Fakultas</h2>
                            <div class="table-search-area">
                                <form action="#">
                                    <input type="search" placeholder="Masukkan kata kunci..">
                                    <select name="dept">
                                        <option selected>Jurusan</option>
                                        <option value="cmt">Informatika</option>
                                        <option value="cmt">Komputer</option>
                                        <option value="cmt">Sipil</option>
                                        <option value="cmt">Mesin</option>
                                        <option value="cmt">Arsitek</option>
                                    </select>
                                    <button class="btn btn-brand">Search</button>
                                </form>
                            </div>

                            <div class="directory-table table-responsive">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th scope="col">Nama</th>
                                            <th scope="col">Jurusan</th>
                                            <th scope="col">Tahun Masuk</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @for ($i = 0; $i < 50; $i++)
                                            <tr>
                                                <td>
                                                    <a href="javascript:" class="faculty-list" data-toggle="modal" data-target="#exampleModalCenter">
                                                        <img src="{{asset('storage/users/default.png')}}" alt="alumni">Nama Alumni
                                                    </a>
                                                </td>
                                                <td>Computer</td>
                                                <td>2014</td>
                                            </tr>
                                        @endfor
                                    </tbody>
                                </table>
                            </div>
                            <p class="show-memeber text-right">
                                Show <span>30</span> of <span>12487 Member</span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--== Blog Page Content End ==-->

    {{-- Modal Detail --}}
    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog"
        aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    <head class="detail-alumni">
                        <div class="d-flex content-center align-items-center">
                            <img class="img-circles mr-4" src="{{asset('storage/users/default.png')}}" alt="alumni">
                            <div class="flex-1">
                                <h5>Nama Saya .Drg</h5>
                                <hr>
                                <p>Fakultas Dokter - Dokter Gigi</p>
                            </div>
                        </div>
                    </head>
                    <body>
                        <h6>Pengalam Kerja</h6>
                        <div class="row">
                            @for ($i = 0; $i < 2; $i++)
                                <div class="col-12">
                                    <div class="card border-primary my-2">
                                        <div class="card-body">
                                            <h6 class="card-title">Rumah Sakit Keluarga {{$i}}</h6>
                                            <p class="card-text"><small>Jabatan: <b>Kepala Dokter Gigi</small></b></p>
                                            @if ($i !== 0)
                                                <p class="card-text"><small>Durasi : <b>2012 - presnt (8 thn)</small></b></p>
                                            @else
                                                <p class="card-text"><small>Durasi : <b>2010 - 2012 (2 thn)</small></b></p>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                            @endfor
                        </div>
                        <h6>Pendidikan</h6>
                        <div class="row">
                            @for ($i = 0; $i < 2; $i++)
                                <div class="col-12">
                                    <div class="card border-primary my-2">
                                        <div class="card-body">
                                            <h6 class="card-title">Sekolah ke {{$i}}</h6>
                                            <p class="card-text"><small>Jabatan: <b>Kepala Dokter Gigi</small></b></p>
                                            @if ($i !== 0)
                                                <p class="card-text"><small>Durasi : <b>2012 - presnt (8 thn)</small></b></p>
                                            @else
                                                <p class="card-text"><small>Durasi : <b>2010 - 2012 (2 thn)</small></b></p>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                            @endfor
                        </div>
                        <h6>Sertifikat</h6>
                        <div class="row">
                            @for ($i = 0; $i < 2; $i++)
                                <div class="col-12">
                                    <div class="card border-primary my-2">
                                        <div class="card-body">
                                            <h6 class="card-title">Sertifikat ke {{$i}}</h6>
                                            <p class="card-text"><small>Di sini isi detailnya</small></p>
                                            @if ($i !== 0)
                                                <p class="card-text"><small>Tahun : <b>2012</small></b></p>
                                            @else
                                                <p class="card-text"><small>Tahun : <b>2010</small></b></p>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                            @endfor
                        </div>
                    </body>
                </div>
            </div>
        </div>
    </div>
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