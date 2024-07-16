<div class="trand-right-single d-flex">
    <div class="trand-right-img">
        <img src="{{ $ltr->img_url }}" alt="" style="height: 100px", width="120px">
    </div>
    <div class="trand-right-cap">
        <span class="color1">{{ $ltr->category_name }}</span>
        <h4><a href="{{ route('tinChiTiet', ['id' => $ltr->id]) }}">{{$ltr->title}}</a></h4>
    </div>
</div>
