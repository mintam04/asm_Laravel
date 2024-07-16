<div class="col-lg-6 col-md-6">
    <div class="single-what-news mb-100">
        <div class="what-img">
            <img src="{{ $tnb->img_url }}" alt="" style="width: 370px; height: 344.3px">
        </div>
        <div class="what-cap">
            <span class="color1">{{ $tnb->category_name}}</span>
            <h4><a href="{{ route('tinChiTiet', ['id' => $tnb->id]) }}">{{$tnb->title}}</a></h4>
        </div>
    </div>
</div>
