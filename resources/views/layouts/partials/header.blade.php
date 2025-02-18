@php
    $listCate = DB::table('categories')->limit(5)->get();
@endphp
<div class="header-area">
    <div class="main-header ">
        <div class="header-top black-bg d-none d-md-block">
            <div class="container">
                <div class="col-xl-12">
                    <div class="row d-flex justify-content-between align-items-center">
                        <div class="header-info-left">
                            <ul>
                                <li><img src="{{ asset('assets/img/icon/header_icon1.png') }}" alt="">34ºc, Sunny
                                </li>
                                <li><img src="{{ asset('assets/img/icon/header_icon1.png') }}" alt="">Tuesday,
                                    18th June, 2019</li>
                            </ul>
                        </div>
                        <div class="header-info-right">
                            <ul class="header-social">

                                @if (Auth::check())
                                    <li class="nav-item">
                                        <a href="#" class="nav-link">Xin chào, {{ Auth::user()->name }}</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="" class="nav-link">
                                            <form action="{{ route('logout') }}" method="POST">
                                                @csrf
                                                <button type="submit" class="btn" style="height: 40px; width: 100px;">Đăng xuất</button>
                                            </form>
                                        </a>

                                    </li>
                                @else
                                    <li class="nav-item">
                                        <a href="{{ route('register') }}" class="nav-link">Đăng ký</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="{{ route('login') }}" class="nav-link">Đăng nhập</a>
                                    </li>
                                @endif
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="header-mid d-none d-md-block">
            <div class="container">
                <div class="row d-flex align-items-center">
                    <!-- Logo -->
                    <div class="col-xl-3 col-lg-3 col-md-3">
                        <div class="logo">
                            <a href="index.html"><img src="{{ asset('assets/img/logo/logo.png') }}" alt=""></a>
                        </div>
                    </div>
                    <div class="col-xl-9 col-lg-9 col-md-9">
                        <div class="header-banner f-right ">
                            <img src="{{ asset('assets/img/hero/header_card.jpg') }}" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="header-bottom header-sticky">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-xl-10 col-lg-10 col-md-12 header-flex">
                        <!-- sticky -->
                        <div class="sticky-logo">
                            <a href="index.html"><img src="{{ asset('assets/img/logo/logo.png') }}" alt=""></a>
                        </div>
                        <!-- Main-menu -->
                        <div class="main-menu d-none d-md-block">
                            <nav>
                                <ul id="navigation">
                                    <li><a href="{{ route('trangChu') }}">Trang chủ</a></li>
                                    @foreach ($listCate as $lc)
                                        <li><a
                                                href="{{ route('tinTrongLoai', ['id' => $lc->id]) }}">{{ $lc->name }}</a>
                                        </li>
                                    @endforeach
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-2 col-md-4">
                        <div class="header-right-btn f-right d-none d-lg-block">
                            <i class="fas fa-search special-tag"></i>
                            <div class="search-box">
                                <form action="{{ route('search') }}" method="GET">
                                    <input type="text" name="query" placeholder="Search" required>
                                    <button type="submit">Search</button>
                                </form>
                            </div>
                        </div>
                    </div>

                    <!-- Mobile Menu -->
                    <div class="col-12">
                        <div class="mobile_menu d-block d-md-none"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
