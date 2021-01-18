@component('mail::message')
# Selamat Datang di {{config('app.name')}}

Selamat akun kamu telah berhasil terverifikasi

@component('mail::button', ['url' => route('login')])
Masuk Sekarang
@endcomponent

Thanks,<br>
{{ config('app.name') }}
@endcomponent
