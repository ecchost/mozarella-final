<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class MozarellaController extends Controller
{
    public function index(){
        $mozarella = DB::table('barang')->get();

        return view('index',['mozarella' => $mozarella]);
    }
    public function detail($id){
        $mozarella = DB::table('barang')->where('id',$id)->get();

        return view('detail', ['mozarella' => $mozarella]);
    }
}
