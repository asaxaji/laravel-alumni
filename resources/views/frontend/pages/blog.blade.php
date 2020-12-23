@extends('frontend.layouts.app-layout')

@section('views')
    <!--== Page Title Area Start ==-->
    <section id="page-title-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 m-auto text-center">
                    <div class="page-title-content">
                        <h1 class="h2">List Blog</h1>
                        <p>
                            Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veniam non perspiciatis mollitia obcaecati rem natus!
                        </p>
                        <a href="#page-content-wrap" class="btn btn-brand smooth-scroll">Let&apos;s See</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--== Page Title Area End ==-->

    <!--== Blog Page Content Start ==-->
    <div id="page-content-wrap">
        <div class="blog-page-content-wrap section-padding">
            <div class="container">
                <div class="row">
                    <!-- Blog content Area Start -->
                    <div class="col-lg-12">
                        <div class="blog-page-contant-start">
                            <div class="row">
                                <!--== Single Blog Post start ==-->
                                @for ($i = 0; $i < 15; $i++)
                                    <div class="col-lg-4 col-md-4 my-4">
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
                                                <h3><a href="{{route('blog.show', ['detail'])}}">Recently we create a maassive project that
                                                        will be a.....</a></h3>
                                                <p>This is a big project of our company, we are happy to completed this type
                                                    projec which are
                                                    get world famous award</p>
                                                <a href="{{route('blog.show', ['detail'])}}" class="btn btn-brand">More</a>
                                            </div>
                                        </article>
                                    </div>
                                @endfor
                                <!--== Single Blog Post End ==-->
                            </div>

                            <!-- Pagination Start -->
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
                            <!-- Pagination End -->
                        </div>
                    </div>
                    <!-- Blog content Area End -->
                </div>
            </div>
        </div>
    </div>
    <!--== Blog Page Content End ==-->
@endsection
