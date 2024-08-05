<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title')</title>
    @include('layoutsUser.partials.head')

</head>

<body class="bg-danger text-white">
    <div class="container mt-5 ">
        @yield('content')
    </div>
</body>


</html>
