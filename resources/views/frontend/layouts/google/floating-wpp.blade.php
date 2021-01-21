<div id="floating-wpp"></div>
<script src="{{asset('assets/vendor/floating-whatsapp/floating-wpp.min.js')}}"></script>
<script>
    jQuery(document).ready(function($){
        $('#floating-wpp').floatingWhatsApp({
            phone: '+6281316754575',
            popupMessage: 'Halo kak, apa yang bisa kami bantu?',
            message: "Halo Admin {!!request()->getHost()!!},",
            showPopup: true,
            showOnIE: false,
            headerTitle: 'Whatsapp!',
        });
    });
</script>