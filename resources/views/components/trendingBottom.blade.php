
<div class="col-lg-4">
    <div class="single-bottom mb-35">
        <div class="trend-bottom-img mb-30">
            <img src="{{ $ltb->img_url }}" alt="">
        </div>
        <div class="trend-bottom-cap">
            <span class="color1">{{ $ltb->category_name }}</span>
            <h4><a href="{{ route('tinChiTiet', ['id' => $ltb->id]) }}">{{$ltb->title}}</a></h4>
        </div>
    </div>
</div>

