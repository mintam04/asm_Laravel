<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="keywords" content="admin, dashboard">
    <meta name="author" content="DexignZone">
    <meta name="robots" content="index, follow">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Dompet : Payment Admin Template">
    <meta property="og:title" content="Dompet : Payment Admin Template">
    <meta property="og:description" content="Dompet : Payment Admin Template">
    <meta property="og:image" content="https://dompet.dexignlab.com/xhtml/social-image.png">
    <meta name="format-detection" content="telephone=no">

    <!-- PAGE TITLE HERE -->
    <title>@yield('title')</title>
    @include('layoutsAdmin.partials.head')

</head>

<body>

    <div id="main-wrapper">
        @include('layoutsAdmin.partials.nav-header')
        @include('layoutsAdmin.partials.chat-box')
        @include('layoutsAdmin.partials.header')
        @include('layoutsAdmin.partials.nav-bottom')
    </div>

    <main>
        @yield('content')
    </main>

    <footer>
        @include('layoutsAdmin.partials.footer')
    </footer>

    @include('layoutsAdmin.partials.js')







</body>

</html>

</body>

</html>
