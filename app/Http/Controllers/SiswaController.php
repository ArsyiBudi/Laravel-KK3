<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SiswaController extends Controller
{

    public function create() {
        return view('siswa.form');
    }

    public function store(Request $request) {

        $rule = [
            'nis' => 'required|numeric',
            'nama_lengkap' => 'required|string',
            'jenkel' => 'required|in:L,P',
            'goldar' => 'required|in:A,A,AB,O',
        ];

        $this->validate($request, $rule);

        $input = $request->all();
        unset($input['_token']);
        $status = \DB::table('t_siswa')->insert($input);

        if ($status) {
            return redirect('/belajar')->with('success', 'data berhasil ditambahkan');
        } else {
            return redirect('/belajar/create')->with('error','Data gagal ditambahkan');
        }
    }

    public function index()
    {
        $data['siswa'] = \DB::table('t_siswa')
        ->orderBy('jenkel')
        // ->where('nama_lengkap', 'like', '%o%')
        ->get();
        return view('belajar', $data);
    }

    public function indexx() {
        $nama = "ferry";
        $jk = "laki-laki";
        return view('belajar2', compact('nama','jk'));
    }

    public function index1() {
        return view('web');
    }

    public function index2() {
        return view('smkn4bandung');
    }

    public function index3() {
        return view('kk3');
    }
}