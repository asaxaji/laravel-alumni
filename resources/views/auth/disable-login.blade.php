<x-guest-layout>
    <x-jet-authentication-card>
        <x-slot name="logo">
            <x-jet-authentication-card-logo />
        </x-slot>

        <div class="mb-4 text-sm text-gray-600">
            {{ __('Maaf, anda belum terdaftar di data alumni IKAUPNVJ, mohon menunggu untuk verifikasi via admin selama 3x24jam, atau hub admin melalui kolom chat diwebsite ini.') }}
        </div>
        <div class="mt-4 flex items-center justify-between">
            <div>
                <a href="{{route('home.index')}}">
                    {{__('Back to Home')}}
                </a>
            </div>
        </div>
    </x-jet-authentication-card>
</x-guest-layout>
