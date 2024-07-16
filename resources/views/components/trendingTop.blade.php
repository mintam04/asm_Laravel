<div class="trend-top-img">
    <img src="{{ $ltt->img_url }}" alt="">
    <div class="trend-top-cap">
        <span>{{$ltt->category_name}}</span>
        <h2><a href="{{ route('tinChiTiet', ['id' => $ltt->id]) }}">{{$ltt->title}}</a></h2>
    </div>
</div>
