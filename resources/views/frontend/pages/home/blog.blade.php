<section id="blog-area" class="section-padding">
    <div class="container">
        <!--== Section Title Start ==-->
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="section-title">
                    <h2>Recent News</h2>
                </div>
            </div>
        </div>
        <!--== Section Title End ==-->

        <!--== Blog Content Wrapper ==-->
        <div class="row">
            <!--== Single Blog Post start ==-->
            @for ($i = 0; $i < 3; $i++)
                <div class="col-lg-4 col-md-6">
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
                            <h3><a href="{{route('blog.show', ['detail'])}}">Recently we create a maassive project that</a></h3>
                            <p>This is a big project of our company, we are happy to completed this type projec which
                                are
                                get world famous award</p>
                            <a href="{{route('blog.show', ['detail'])}}" class="btn btn-brand">More</a>
                        </div>
                    </article>
                </div>
            @endfor
            <!--== Single Blog Post End ==-->
        </div>
        <!--== Blog Content Wrapper ==-->
    </div>
</section>