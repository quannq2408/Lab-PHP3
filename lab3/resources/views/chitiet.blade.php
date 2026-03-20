@extends('layout')
@section('tieudetrang')
chi tiet tin {{$id}}
@endsection
@section('noidung')
<h2>{{ $tin->tieuDe }}</h2>
<h2>{{ $tin->tomTat }}</h2>
<div id="noiDung">
    {!! $tin->noiDung !!}
</div>
@endsection