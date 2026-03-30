<form action="/tin/them" method="post" class="col-7 m-auto"> [cite: 136]
    @csrf [cite: 150]
    <p> Tiêu đề: <input name="tieuDe" class="form-control"></p> [cite: 137, 138]
    <p> Tóm tắt: <textarea name="tomTat" class="form-control"></textarea></p> [cite: 139, 140]
    <p> urlHinh: <input name="urlHinh" class="form-control"></p> [cite: 141, 142]
    <p> idLT: 
        <select name="idLT" class="form-control"> [cite: 144]
            <option value="1">Xã hội</option> [cite: 146]
            <option value="3">Du lịch</option> [cite: 147]
        </select>
    </p>
    <p><button type="submit" class="bg-warning p-2">Thêm tin</button></p> [cite: 149]
</form>