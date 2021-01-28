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

    {{-- Modal show popup --}}
    <div class="modal fade" id="popupModal" tabindex="-1" role="dialog" aria-labelledby="popupModal" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <button type="button" id="close-popup" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <img src="https://images.pexels.com/photos/1125056/pexels-photo-1125056.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
                    class="img-fluid" />
            </div>
        </div>
    </div>
@endsection

@section('scripts')
    <script>
        window.addEventListener('DOMContentLoaded', (event) => {
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
            $('#popupModal').modal('show')
        });
    </script>
@endsection
