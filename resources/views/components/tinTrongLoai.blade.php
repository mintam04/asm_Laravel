<div class="col-lg-6 col-md-6">
    <div class="single-what-news mb-100">
        <div class="what-img">
            <img src="{{ $ttl->img_url }}" alt="" style="width: 370px; height: 344.3px">
        </div>
        <div class="what-cap">
            <span class="color1">{{ $ttl->category_name }}</span>
            <span class="color1">{{ $ttl->created_at }}</span>
            <div class="row">
                <div class="col-6">
                    <h4><a href="{{ route('tinChiTiet', ['id' => $ttl->id]) }}">{{ $ttl->title }}</a></h4>
                </div>
                <div class="col-6">
                    <p>Lượt xem: {{ $ttl->views }}</p>

                </div>
            </div>
        </div>
    </div>
</div>
