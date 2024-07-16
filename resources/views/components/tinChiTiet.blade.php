    {{-- @php
    echo "<pre>";
    print_r($tin);
    echo "</pre>";
@endphp --}}

<div class="article-details">
    <div class="article-header">
        <h1 class="article-title">{{$tin->title}}</h1>
        <p class="article-info"><strong>Lượt xem:</strong> {{$tin->views}}</p>
        <p class="article-info"><strong>Ngày đăng:</strong> {{$tin->created_at}}</p>
    </div>
</div>


<div class="about-right mb-90">
    <div class="about-img">
        <img src="{{ $tin->img_url }}" alt="">
    </div>
    <div class="section-tittle mb-30 pt-30">
        {!!$tin->content!!}
    </div>

    <div class="social-share pt-30">
        <div class="section-tittle">
            <h3 class="mr-20">Share:</h3>
            <ul>
                <li><a href="#"><img src="{{ asset('assets/img/news/icon-ins.png') }}" alt=""></a></li>
                <li><a href="#"><img src="{{ asset('assets/img/news/icon-fb.png') }}" alt=""></a></li>
                <li><a href="#"><img src="{{ asset('assets/img/news/icon-tw.png') }}" alt=""></a></li>
                <li><a href="#"><img src="{{ asset('assets/img/news/icon-yo.png') }}" alt=""></a></li>
            </ul>
        </div>
    </div>
</div>

<div class="comments-section mb-50">
    <h3>Bình luận</h3>
    @if ($listComments->count() > 0)
    <table class="comments-table">
        <thead>
            <tr>
                <th>Người dùng</th>
                <th>Ngày</th>
                <th>Nội dung</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($listComments as $c)
            <tr>
                <td>{{$c->user_name}}</td>
                <td>{{$c->created_at}}</td>
                <td>{{$c->content}}</td>
            </tr>
            @endforeach
        </tbody>
    </table>
    @else
        <p>Chưa có bình luận nào.</p>
    @endif
</div>
