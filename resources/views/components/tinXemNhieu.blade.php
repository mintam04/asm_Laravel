    <div class="weekly2-single">
        <div class="weekly2-img">
            <img src="{{ $txn->img_url }}" alt="" style="width: 270px; height: 174.51px">
        </div>
        <div class="weekly2-caption">
            <span class="color1">{{ $txn->category_name }}</span>
            <p>{{ $txn->created_at }}</p>
            <h4><a href="{{ route('tinChiTiet', ['id' => $txn->id]) }}">{{ $txn->title }}</a></h4>
        </div>
    </div>
