<section id="blog-area" class="section-padding bg-white">
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
            @foreach ($blogs as $kb => $vb)
                <div class="col-lg-4 col-md-6 my-2">
                    <article class="single-blog-post">
                        <figure class="blog-thumb">
                            <div class="blog-thumbnail">
                                <img src="{{asset('storage/'.$vb->image)}}" alt="{{$vb->title}}" class="img-fluid">
                            </div>
                            <figcaption class="blog-meta clearfix">
                                <a href="{{route('blog.show', [$vb->slug])}}" class="author">
                                    <div class="author-pic">
                                        <img src="{{asset('storage/users/default.png')}}" alt="Author">
                                    </div>
                                    <div class="author-info">
                                        <h5>Admin</h5>
                                        <p>{{$vb->created_at->diffForHumans()}}</p>
                                    </div>
                                </a>
                                <div class="like-comm pull-right">
                                    <a href="#"><i class="fa fa-comment-o"></i>77</a>
                                    <a href="#"><i class="fa fa-heart-o"></i>12</a>
                                </div>
                            </figcaption>
                        </figure>

                        <div class="blog-content">
                            <h3><a href="{{route('blog.show', [$vb->slug])}}">{{Str::limit($vb->title, 20)}}</a></h3>
                            <p>{{Str::limit($vb->excerpt, 100)}}</p>
                            <a href="{{route('blog.show', [$vb->slug])}}" class="btn btn-brand">More</a>
                        </div>
                    </article>
                </div>
            @endforeach
            <!--== Single Blog Post End ==-->
        </div>
        <!--== Blog Content Wrapper ==-->
    </div>
</section>