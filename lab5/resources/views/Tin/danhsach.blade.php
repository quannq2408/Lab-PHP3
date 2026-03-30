<div class="container">
    <h1>DANH SÁCH TIN</h1> [cite: 97]
    @foreach ($data as $tin) [cite: 98]
    <div class="row">
        <div class="left">
            <h4>{{$tin->tieuDe}}</h4> [cite: 101]
            <p>{{$tin->tomTat}}</p> [cite: 102]
        </div>
        <div class="right"> 
            <a href="/tin/capnhat/{{$tin->id}}">Cập nhật</a> [cite: 104]
            <a href="/tin/xoa/{{$tin->id}}">Xóa</a> [cite: 109]
        </div>
    </div><hr>
    @endforeach
</div>