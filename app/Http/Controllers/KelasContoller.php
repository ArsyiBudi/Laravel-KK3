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
            'nama_Jurusan' => 'required|regex:/^[A-Za-z0-9 ]+$/',
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

    public function edit(Request $request, $id) {
        $data['kelas'] = \DB::table('t_kelas')->find($id);
        return view('kelas.form', $data);
    }

    public function destroy(Request $request, $id) {

        $status = \DB::table('t_kelas')->where('id', $id)->delete();

        if ($status) {
            return redirect('/kelas24')->with('success', 'Data berhasil dihapus');
        } else {
            return redirect('/kelas24/create')->with('error', 'Data gagal dihapus');
        }
    }

    public function update(Request $request, $id) {

        $rule = [
            'nama_kelas' => 'required|regex:/^[A-Za-z0-9 ]+$/', 
            'nama_Jurusan' => 'required|regex:/^[A-Za-z0-9 ]+$/',
            'nama_wali_kelas' => 'required|regex:/^[A-Za-z0-9 ]+$/',
            'lokasi_ruangan' => 'required|alphanum|not_in'
        ];

        $this->validate($request, $rule);

        $input = $request->all();
        unset($input['_token']);
        unset($input['_method']);

        $status = \DB::table('t_kelas')->where('id', $id)->update($input);

        if ($status) {
            return redirect('/kelas24')->with('success', 'Data berhasil diubah');
        } else {
            return redirect('/kelas24/create')->with('error', 'Data gagal diubah');
        }
    }
}
