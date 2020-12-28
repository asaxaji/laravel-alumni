<section id="upcoming-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="upcoming-event-wrap">
                    <div class="up-event-titile">
                        <h3>Upcoming event</h3>
                    </div>
                    <div class="upcoming-event-content owl-carousel">
                        @forelse ($events as $ek => $ev)
                            <div class="single-upcoming-event">
                                <div class="row">
                                    <div class="col-lg-5">
                                        <div class="up-event-thumb">
                                            <img src="{{asset('storage/faker/'.$ev->image)}}" class="img-fluid" alt="Upcoming Event">
                                            <h4 class="up-event-date">{{dateFormat($ev->start_at)->format('d M Y')}}</h4>
                                        </div>
                                    </div>

                                    <div class="col-lg-7">
                                        <div class="display-table">
                                            <div class="display-table-cell">
                                                <div class="up-event-text">
                                                    <div class="event-countdown">
                                                        <div class="event-countdown-counter" data-date="{{dateFormat($ev->start_at)->format('Y/m/d')}}"></div>
                                                        <p>Remaining</p>
                                                    </div>
                                                    <h3><a href="{{route('event.show', [$ev->slug])}}">{{$ev->title}}</a></h3>
                                                    <p>{{$ev->excerpt}}</p>
                                                    <a href="{{route('event.show', [$ev->slug])}}" class="btn btn-brand btn-brand-dark">Detail</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @empty
                        @endforelse
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>