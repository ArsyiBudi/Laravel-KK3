<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class KelasContoller extends Controller
{
    public function indexx1() {
        $data['kelas'] = \DB::table('t_kelas')
        ->get();
        return view('kelas24', $data);
    }

    public function create() {
        
        return view('kelas.form');
    }

    public function store(Request $request) {

        $rule = [
            'nama_kelas' => 'required|regex:/^[A-Za-z0-9 ]+$/',
            'nama_jurusan' => 'required|regex:/^[A-Za-z0-9 ]+$/',
            'nama_wali_kelas' => 'required|regex:/^[A-Za-z0-9 ]+$/',
            'lokasi_ruangan' => 'required|alphanum|not_in',
        ];

        $this->validate($request, $rule);

        $input = $request->all();
        unset($input['_token']);
        $status = \DB::table('t_kelas')->insert($input);

        if ($status) {
            return redirect('kelas24')->with('success', 'data berhasil ditambahkan');
        } else {
            return redirect('/kelas24/create')->with('error', 'Data gagal ditambahkan');
        }
    }
}
