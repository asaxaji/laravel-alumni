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
    @includeWhen($galleries->count() > 0, 'frontend.pages.home.gallery', [$galleries])
    <!--== Gallery Area Start ==-->

    <!--== Blog Area Start ==-->
    @includeWhen($blogs->count() > 0, 'frontend.pages.home.blog', [$blogs])
    <!--== Blog Area EndBlog ==-->

    <!--== FunFact Area Start ==-->
    @includeIf('frontend.pages.home.funfact', ['show' => true])
    <!--== FunFact Area End ==-->
@endsection
