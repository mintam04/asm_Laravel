<div class="dlabnav">
    <div class="dlabnav-scroll">
        <ul class="metismenu" id="menu">
            <li class="dropdown header-profile">
                <a class="nav-link" href="javascript:void(0);" role="button" data-bs-toggle="dropdown">
                    <img src="{{ asset('admin/images/profile/pic1.jpg') }}" width="20" alt="">
                    <div class="header-info ms-3">
                        <span class="font-w600">Hi,<b>Admin</b></span>
                        <small class="text-end font-w400">Quản trị web</small>
                    </div>
                </a>
                <div class="dropdown-menu dropdown-menu-end">
                     @if (Auth::check())
                            <form action="{{ route('logout') }}" method="POST">
                                @csrf
                                <span href="" class="dropdown-item ai-icon">
                                    <svg id="icon-logout" xmlns="http://www.w3.org/2000/svg" class="text-danger" width="18"
                                        height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                        stroke-linecap="round" stroke-linejoin="round">
                                        <path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path>
                                        <polyline points="16 17 21 12 16 7"></polyline>
                                        <line x1="21" y1="12" x2="9" y2="12"></line>
                                    </svg>

                                    <span class="ms-2"><button type="submit" class="btn btn-light">Logout</button></span>
                                </span>

                            </form>
                        @endif
                </div>
            </li>
            <li>
                <a href="/dashboard">
                    <i class="flaticon-025-dashboard"></i>
                    <span class="nav-text">Trang Chủ</span>
                </a>
            </li>
            <li>
                <a href="{{ route('admin.loaiTin.index') }}">
                    <i class="flaticon-041-graph"></i>
                    <span class="nav-text">Quản lý loại tin</span>
                </a>
            </li>
            <li>
                <a href="{{ route('admin.tin.index') }}">
                    <i class="flaticon-043-menu"></i>
                    <span class="nav-text">Quản lý tin</span>
                </a>
            </li>

        </ul>
    </div>
</div>
