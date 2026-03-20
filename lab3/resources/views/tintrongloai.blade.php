@extends('layout')
@section('tieudetrang')
tin trong l0ai {{$idLT}}
@endsection
@section('noidung')   
<h1>Các tin trong loại {{ $idLT }}</h1>
@foreach ($listtin as $t)
    <div class="row">
        <h3>
            <a href="{{ url('/tin', [$t->id]) }}">
                {{ $t->tieuDe }}
            </a>
        </h3>
        <p>{{ $t->tomTat ?: 'Chưa có tóm tắt tin này.' }}</p>
    </div>
@endforeach
@endsection