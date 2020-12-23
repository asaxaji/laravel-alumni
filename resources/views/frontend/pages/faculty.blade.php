@extends('frontend.layouts.app-layout')

@section('views')
    <!--== Page Title Area Start ==-->
    {{-- <section id="page-title-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 m-auto text-center">
                    <div class="page-title-content">
                        <h1 class="h2">Get Together 2018</h1>
                        <p>Alumni Needs enables you to harness the power of your alumni network. Whatever may be the
                            need</p>
                        <a href="#page-content-wrap" class="btn btn-brand smooth-scroll">Let&apos;s See</a>
                    </div>
                </div>
            </div>
        </div>
    </section> --}}
    <!--== Page Title Area End ==-->

    <!--== Gallery Page Content Start ==-->
    <section id="page-content-wrap">
        <div class="single-event-page-content section-padding pt-5">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="sidebar-area-wrap">
                            <div class="single-sidebar-wrap">
                                <div class="single-event-details">
                                    <h2 class="mt-3 mb-5">Halaman Fakultas</h2>
                                    <p>Aenean viverra rhoncus pede. Phasellus leo dolor, tempus non, auctor endrerit quis, nisi.
                                        Fusce neque. Donec vitae orci sed dolor rutrum auctor. Sed ngilla mauris sit amet nibhr,
                                        tempus non, auctor endrerit quis, nisi..</p>
        
                                    <p>Etiam rhoncus. Ut leo. Morbi mollis tellus ac sapien. Fusce fermentum oo nec arcu.
                                        Quisque malesuada placerat nisl. Etiam sit amet orci eget faucitincidunt. Quisque
                                        rutrum. Pellentesque posuere. Praesent ac massa at ligula laoureet iaculis. Cras risus
                                        ipsum, faucibus ut, ullamcorper id, varius ac, leo.Ut a nisl id
                                        Etiam rhoncus. Ut leo. Morbi mollis tellus ac sapien. Fusce fermentum oo nec ante tempus
                                        hendrerit. Curabitur at lacus ac velit ornare lobortis. Donec pede justo, fringilla vel,
                                        aliquet nec, vulputate eget, arcu. In turpis. Quisque id mi.</p>
                                    <div class="event-schedul">
                                        <h3>Daftar Fakultas</h3>
                                        <div class="row">
                                            <div class="col-lg-10 m-auto">
                                                <div class="directory-table table-responsive">
                                                    <table class="table table-bordered">
                                                        <thead>
                                                            <tr>
                                                                <th>Nama Fakultas</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            @for ($i = 0; $i < 50; $i++)
                                                                <tr>
                                                                    <td>
                                                                        <a class="faculty-list" href="{{route('faculty.show', 'detail')}}">Fakultas ke {{$i}}</a>
                                                                    </td>
                                                                </tr>
                                                            @endfor
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--== Gallery Page Content End ==-->
@endsection
