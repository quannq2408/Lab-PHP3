<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TinController extends Controller
{
        function index(){
        $data = \App\Models\tin::all();
        return view('Tin/danhsach', ['data' => $data]);
    }
        function them(){
        return view("Tin/themtin");
    }

        function them_(){
            $t = new \App\Models\tin; 
            $t->tieuDe = $_POST['tieuDe']; 
            $t->tomTat = $_POST['tomTat']; 
            $t->urlHinh = $_POST['urlHinh']; 
            $t->idLT = $_POST['idLT']; 
            $t->save(); 
            return redirect('/tin/ds'); 
    }
        function xoa($id) {
        $t = \App\Models\tin::find($id); 
        if ($t == null) return redirect('/thongbao'); 
        $t->delete(); 
        return redirect('/tin/ds'); 
    }
    function capnhat($id) {
    $t = \App\Models\tin::find($id); 
    if ($t == null) return redirect('/thongbao'); 
    return view("Tin/capnhattin", ['tin' => $t]); 
}
function capnhat_($id){
    $t = \App\Models\tin::find($id); 
    if ($t == null) return redirect('/thongbao'); 
    $t->tieuDe = $_POST['tieuDe']; 
    $t->tomTat = $_POST['tomTat']; 
    $t->urlHinh = $_POST['urlHinh']; 
    $t->idLT = $_POST['idLT']; 
    $t->save(); 
    return redirect('/tin/ds'); 
}
}
