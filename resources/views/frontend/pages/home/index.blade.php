@extends('frontend.layouts.app-layout')

@section('views')
    <!--== Slider Area Start ==-->
    @includeIf('frontend.pages.home.slider', [$sliders])
    <!--== Slider Area End ==-->

    <!--== Upcoming Event Area Start ==-->
    @includeWhen($events->count() > 0, 'frontend.pages.home.event', [$events])
    <!--== Upcoming Event Area End ==-->

    <!--== About Area Start ==-->
    @includeIf('frontend.pages.home.about', ['show' => true])
    <!--== About Area End ==-->

    <!--== Our Responsibility Area Start ==-->
    @includeIf('frontend.pages.home.responsibility', ['show' => true])
    <!--== Our Responsibility Area End ==-->

    <!--== Job Opportunity Area Start ==-->
    @includeIf('frontend.pages.home.career', [$careers])
    <!--== Job Opportunity Area End ==-->

    <!--== Gallery Area Start ==-->
    {{-- @includeWhen($galleries->count() > 0, 'frontend.pages.home.gallery', [$galleries]) --}}
    <!--== Gallery Area Start ==-->

    <!--== Blog Area Start ==-->
    @includeWhen($blogs->count() > 0, 'frontend.pages.home.blog', [$blogs])
    <!--== Blog Area EndBlog ==-->

    <!--== FunFact Area Start ==-->
    @livewire('frontend.fun-fact')
    <!--== FunFact Area End ==-->
@endsection

@section('scripts')
    <script>
        var swiper = new Swiper('.swiper-services', {
            slidesPerView: 1,
            spaceBetween: 10,
            // init: false,
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
            breakpoints: {
                640: {
                slidesPerView: 2,
                spaceBetween: 20,
                },
                768: {
                slidesPerView: 4,
                spaceBetween: 40,
                },
                1024: {
                slidesPerView: 4,
                spaceBetween: 50,
                },
            }
            });
    </script>
@endsection
