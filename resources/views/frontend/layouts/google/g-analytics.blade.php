@if (request()->getHost() === 'ikaupnvj.or.id' || request()->getHost() === 'www.ikaupnvj.or.id')
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-MMPC9CM7RN"></script>
    <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'G-MMPC9CM7RN');
    </script>
@endif