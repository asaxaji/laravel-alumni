<x-jet-action-section>
    <x-slot name="title">
        {{ __('Gradutes') }}
    </x-slot>

    <x-slot name="description">
        {{ __('Tambahkan history pendidikan kamu') }}
    </x-slot>

    <x-slot name="content">
        <div class="space-y-6">
            <!-- Other Browser Sessions -->
            @forelse ($graduates as $kw => $vw)
                <div x-data="{show: false}" wire:key={!!"key-$kw"!!} class="flex items-center">
                    @if ($vw->is_cureent)
                        <div x-on:click.prevent="show=!show" class="cursor-pointer">
                            <svg viewBox="0 -31 512 512" xmlns="http://www.w3.org/2000/svg" class="w-10 h-10 text-gray-500">
                                <path d="m497.09375 60.003906c-.03125 0-.0625-.003906-.09375-.003906h-136v-15c0-24.8125-20.1875-45-45-45h-120c-24.8125 0-45 20.1875-45 45v15h-136c-8.351562 0-15 6.84375-15 15v330c0 24.8125 20.1875 45 45 45h422c24.8125 0 45-20.1875 45-45v-329.683594c0-.019531 0-.039062 0-.058594-.574219-9.851562-6.632812-15.199218-14.90625-15.253906zm-316.09375-15.003906c0-8.269531 6.730469-15 15-15h120c8.269531 0 15 6.730469 15 15v15h-150zm295.1875 45-46.582031 139.742188c-2.042969 6.136718-7.761719 10.257812-14.226563 10.257812h-84.378906v-15c0-8.285156-6.714844-15-15-15h-120c-8.285156 0-15 6.714844-15 15v15h-84.378906c-6.464844 0-12.183594-4.121094-14.226563-10.257812l-46.582031-139.742188zm-175.1875 150v30h-90v-30zm181 165c0 8.269531-6.730469 15-15 15h-422c-8.269531 0-15-6.730469-15-15v-237.566406l23.933594 71.796875c6.132812 18.40625 23.289062 30.769531 42.6875 30.769531h84.378906v15c0 8.285156 6.714844 15 15 15h120c8.285156 0 15-6.714844 15-15v-15h84.378906c19.398438 0 36.554688-12.363281 42.6875-30.769531l23.933594-71.796875zm0 0"/>
                            </svg>
                        </div>

                        <div class="ml-3 flex-1">
                            <div class="text-md cursor-pointer text-gray-600" x-on:click.prevent="show=!show">
                                <b>{!!!empty($vw->title) ? $vw->title : $vw->university_id->name!!}</b>
                                @if ($vw->faculty_id->name && $vw->prody_id->name)
                                    <small>{{$vw->faculty_id->name}} - {{$vw->prody_id->name}}</small>
                                @endif
                            </div>

                            @if (!empty($vw->note))
                                <div class="text-md cursor-pointer text-gray-600" x-on:click.prevent="show=!show">
                                    {!!$vw->note!!}
                                </div>
                            @endif

                            <div>
                                <div class="text-sm text-green-500">
                                    {{$vw->start_at->format('M Y')}} - Present
                                </div>
                            </div>
                            {{-- <livewire:form.career-form :key="$vw->id" :career="$vw" /> --}}
                        </div>
                        <div>
                            <p class="text-red-500 cursor-pointer mx-5" wire:click="deleteWork({!!$vw->id!!})">Hapus</p>
                        </div>
                    @else
                        <div x-on:click.prevent="show=!show" class="cursor-pointer">
                            <svg viewBox="0 -31 512 512" xmlns="http://www.w3.org/2000/svg" class="w-10 h-10 text-gray-500">
                                <path d="m497.09375 60.003906c-.03125 0-.0625-.003906-.09375-.003906h-136v-15c0-24.8125-20.1875-45-45-45h-120c-24.8125 0-45 20.1875-45 45v15h-136c-8.351562 0-15 6.84375-15 15v330c0 24.8125 20.1875 45 45 45h422c24.8125 0 45-20.1875 45-45v-329.683594c0-.019531 0-.039062 0-.058594-.574219-9.851562-6.632812-15.199218-14.90625-15.253906zm-316.09375-15.003906c0-8.269531 6.730469-15 15-15h120c8.269531 0 15 6.730469 15 15v15h-150zm295.1875 45-46.582031 139.742188c-2.042969 6.136718-7.761719 10.257812-14.226563 10.257812h-84.378906v-15c0-8.285156-6.714844-15-15-15h-120c-8.285156 0-15 6.714844-15 15v15h-84.378906c-6.464844 0-12.183594-4.121094-14.226563-10.257812l-46.582031-139.742188zm-175.1875 150v30h-90v-30zm181 165c0 8.269531-6.730469 15-15 15h-422c-8.269531 0-15-6.730469-15-15v-237.566406l23.933594 71.796875c6.132812 18.40625 23.289062 30.769531 42.6875 30.769531h84.378906v15c0 8.285156 6.714844 15 15 15h120c8.285156 0 15-6.714844 15-15v-15h84.378906c19.398438 0 36.554688-12.363281 42.6875-30.769531l23.933594-71.796875zm0 0"/>
                            </svg>
                        </div>

                        <div class="ml-3 flex-1">
                            <div class="text-md cursor-pointer text-gray-600" x-on:click.prevent="show=!show">
                                <b>{!!!empty($vw->title) ? $vw->title : $vw->university->name!!}</b>
                            </div>

                            <div class="text-md cursor-pointer text-gray-600" x-on:click.prevent="show=!show">
                                @if (!empty($vw->faculty->name) && !empty($vw->prody->name))
                                    <small>{{$vw->faculty->name}} - {{$vw->prody->name}}</small>
                                @endif
                            </div>

                            @if (!empty($vw->note))
                                <div class="text-md cursor-pointer text-gray-600" x-on:click.prevent="show=!show">
                                    {!!$vw->note!!}
                                </div>
                            @endif

                            <div>
                                <div class="text-sm text-gray-500">
                                    {{$vw->start_at->format('M Y')}} - {{$vw->end_at->format('M Y')}} ({{dateFormat($vw->start_at)->diffInMonths($vw->end_at)}} bulan)
                                </div>
                            </div>
                            {{-- <livewire:form.career-form :key="$vw->id" :career="$vw" /> --}}
                        </div>
                        <div>
                            <p class="text-red-500 cursor-pointer mx-5" wire:click="deleteWork({!!$vw->id!!})">Hapus</p>
                        </div>
                    @endif
                </div>
            @empty
            @endforelse
        </div>

        <div class="flex items-center mt-5">
            <x-jet-button wire:click="addWorkExperience" wire:loading.attr="disabled">
                {{ __('Add') }}
            </x-jet-button>
        </div>

    </x-slot>
</x-jet-action-section>
