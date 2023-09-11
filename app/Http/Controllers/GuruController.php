<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class GuruController extends Controller
{
    public function index() {

        // modified to eloquent //

        // $data['guru'] = \DB::table('t_guru')
        // ->get();

        $data['guru'] = \App\Models\Guru::orderBy('nama_guru')->get();
        return view('guru', $data);
    }  

    public function create() {
        
        return view('guru.form');
    }

    public function store(Request $request) {

        $rule = [
            'nip' => 'required|integer',
            'nama_guru' => 'required|regex:/^[A-Za-z]+$/',
            'jenis_kelamin' => 'required|regex:/^[L, P]+$/',
            'alamat' => 'required|regex:/^[A-Za-z0-9 ]+$/',
        ];

        $this->validate($request, $rule);

        $input = $request->all();

        // modified to eloqquent //

        // unset($input['_token']);
        // $status = \DB::table('t_guru')->insert($input);

        $status = \App\Models\Guru::create($input);

        if ($status) {
            return redirect('guru')->with('success', 'data berhasil ditambahkan');
        } else {
            return redirect('/guru/create')->with('error', 'Data gagal ditambahkan');
        }
    }

    public function edit(Request $request, $id) {
        $data['guru'] = \DB::table('t_guru')->find($id);
        return view('guru.form', $data);
    }

    public function update(Request $request, $id) {

        $rule = [
            'nip' => 'required|integer',
            'nama_guru' => 'required|regex:/^[A-Za-z]+$/',
            'jenis_kelamin' => 'required|regex:/^[L, P]+$/',
            'alamat' => 'required|regex:/^[A-Za-z0-9 ]+$/',
        ];

        $this->validate($request, $rule);

        $input = $request->all();

        // modified to eloquent //

        // unset($input['_token']);
        // unset($input['_method']);

        // $status = \DB::table('t_guru')->where('id', $id)->update($input);

        $guru = \App\Models\Guru::find($id);
        $status = $guru->update($input);

        if ($status) {
            return redirect('/guru')->with('success', 'Data berhasil diubah');
        } else {
            return redirect('/guru/create')->with('error', 'Data gagal diubah');
        }
    }

    public function destroy(Request $request, $id) {

        //modified to eloquent //

        // $status = \DB::table('t_guru')->where('id', $id)->delete();

        $guru = \App\Models\Guru::find($id);
        $status = $guru->delete();

        if ($status) {
            return redirect('/guru')->with('success', 'Data berhasil dihapus');
        } else {
            return redirect('/guru/create')->with('error', 'Data gagal dihapus');
        }
    }
}
