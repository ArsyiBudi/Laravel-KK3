@if(session('error'))
<div class="alert alert-error">
    {{ session('error')}}
</div>
@endif

@if (count($errors) > 0)
<div class="alert alert-danger">
    <strong>perhatian</strong>
    <br />
    <ul>
        @foreach ($errors->all() as $error)
        <li>{{ $error }}</li>
        @endforeach
    </ul>
</div>
@endif

<form action="{{ url('kelas24') }}" method="POST">
    @csrf

    Nama_kelas :   <input type="text" name="nama_kelas" value="{{ old('nama_kelas') }}"></br>
    </br>
    nama_jurusan :   <input type="text" name="nama_jurusan" value="{{ old('nama_jurusan') }}"></br>
    </br>
    nama_wali_kelas :   <input type="text" name="nama_wali_kelas" value="{{ old('nama_wali_kelas') }}"></br>
    </br>
    lokasi_ruangan :   <input type="text" name="lokasi_ruangan" value="{{ old('lokasi_ruangan') }}"></br>
    </br>
    <input type="submit" value="simpan">
</form>