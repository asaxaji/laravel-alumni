@extends('frontend.layouts.app-layout')

@section('views')
    <!--== Page Title Area Start ==-->
    {{-- <section id="page-title-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 m-auto text-center">
                    <div class="page-title-content">
                        <h1 class="h2">Member Directory</h1>
                        <p>Alumni Needs enables you to harness the power of your alumni network. Whatever may be the
                            need</p>
                        <a href="#page-content-wrap" class="btn btn-brand smooth-scroll">Let&apos;s See</a>
                    </div>
                </div>
            </div>
        </div>
    </section> --}}
    <!--== Page Title Area End ==-->

    <!--== Directory Page Content Start ==-->
    <section id="page-content-wrap">
        <div class="directory-page-content-warp section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="directory-text-wrap">
                            <h2>Now we have <strong class="funfact-count">485274</strong> alumni </h2>
                            <div class="table-search-area">
                                <form action="#">
                                    <input type="search" placeholder="Masukkan kata kunci..">
                                    <select name="faculty">
                                        <option selected disabled>Fakultas</option>
                                        <option value="cmt">Kedoktran</option>
                                        <option value="cmt">Teknik</option>
                                        <option value="cmt">Hukum</option>
                                    </select>
                                    <select name="dept">
                                        <option selected disabled>Jurusan</option>
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
                                            <th scope="col">Pendidikan</th>
                                            <th scope="col">Tahun Lulus</th>
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
                                                <td>
                                                    <h6><b>Fakultas Teknik</b></h6>
                                                    <p><i>Teknik Informatika</i></p>
                                                </td>
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

                <div class="row">
                    <div class="col-lg-12">
                        <div class="pagination-wrap text-center">
                            <nav>
                                <ul class="pagination">
                                    <li class="page-item"><a class="page-link" href="#"><i
                                                class="fa fa-angle-left"></i></a></li>
                                    <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                    <li class="page-item"><a class="page-link" href="#">...</a></li>
                                    <li class="page-item"><a class="page-link" href="#">50</a></li>
                                    <li class="page-item"><a class="page-link" href="#"><i
                                                class="fa fa-angle-right"></i></a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--== Directory Page Content End ==-->

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
