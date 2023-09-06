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
            'goldar' => 'required|in:A,B,AB,O',
        ];

        $this->validate($request, $rule);

        $input = $request->all();

        // modified to eloquent //

        // unset($input['_token']);
        // $status = \DB::table('t_siswa')->insert($input);

        $status = \App\Models\Siswa::create($input);

        if ($status) {
            return redirect('/belajar')->with('success', 'data berhasil ditambahkan');
        } else {
            return redirect('/belajar/create')->with('error','Data gagal ditambahkan');
        }
    }

    public function edit($id) {

        $data['siswa'] = \DB::table('t_siswa')->find($id);
        return view('siswa.form', $data);
    }

    public function update(Request $request, $id) {

        $rule = [
            'nis' => 'required|numeric',
            'nama_lengkap' => 'required|string',
            'jenkel' => 'required',
            'goldar' => 'required',
        ];

        $this->validate($request, $rule);

        $input = $request->all();

        // modified to eloquent //

        // unset($input['_token']);
        // unset($input['_method']);

        // $status = \DB::table('t_siswa')->where('id', $id)->update($input);

        $siswa = \App\Models\Siswa::find($id);
        $status = $siswa->update($input);

        if ($status) {
            return redirect('/belajar')->with('success', 'Data berhasil diubah');
        } else {
            return redirect('/belajar/create')->with('error', 'Data gagal diupdate');
        }
    }

    public function destroy(Request $request, $id) {

        // modified to eloquent //

        // $status = \DB::table('t_siswa')->where('id', $id)->delete();
        $siswa = \App\Models\Siswa::find($id);
        $status = $siswa->delete();

        if($status) {
            return redirect('/belajar')->with('success', 'data berhasil dihapus');
        } else {
            return redirect('/belajar/create')->with('error', 'data gagal dihapus');
        }

    }

    public function index()
    {
        // modified to eloquent //

        // $data['siswa'] = \DB::table('t_siswa')
        // ->orderBy('jenkel')
        // // ->where('nama_lengkap', 'like', '%o%')
        // ->get();

        $data['siswa'] = \App\Models\Siswa::orderBy('jenkel')->get();
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
