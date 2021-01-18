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
                            <h2>Now we have <strong class="funfact-count">{{$users->count()}}</strong> alumni </h2>
                            <div class="table-search-area">
                                <form action="{{route('alumni.index')}}" method="GET">
                                    <input type="search" placeholder="Masukkan kata kunci..">
                                    <select name="faculty">
                                        <option selected disabled>Fakultas</option>
                                        @foreach ($faculty as $fk => $fv)
                                            <option value="{{$fv->id}}">{{$fv->name}}</option>
                                        @endforeach
                                    </select>
                                    <select name="dept">
                                        <option selected disabled>Jurusan</option>
                                        @foreach ($prody as $pk => $pv)
                                            <option value="{{$pv->id}}">{{$pv->name}}</option>
                                        @endforeach
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
                                        @foreach ($users as $ku => $vu)
                                            <tr>
                                                <td>
                                                    <a href="javascript:" class="faculty-list" data-toggle="modal" data-target="#exampleModalCenter">
                                                        <img src="{{asset('storage/'.$vu->profile_photo_path)}}" alt="alumni">
                                                        {{$vu->name}}
                                                    </a>
                                                </td>
                                                <td>
                                                    <h6><b>{{$vu->graduates->first()->faculty->name}}</b></h6>
                                                    <p><i>{{$vu->graduates->first()->prody->name}}</i></p>
                                                </td>
                                                <td>{{$vu->graduates->first()->end_at->format('Y')}}</td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12">
                        {{$users->links()}}
                        {{-- <div class="pagination-wrap text-center">
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
                        </div> --}}
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
