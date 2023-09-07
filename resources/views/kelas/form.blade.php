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
<h1>form</h1>
<form action="{{ url('kelas24', @$kelas->id) }}" method="POST">
    @csrf

    @if(!empty($kelas))
        @method('PATCH')
    @endif

    Nama_kelas :   <input type="text" name="nama_kelas" value="{{ old('nama_kelas', @$kelas->nama_kelas) }}"></br>
    </br>
    nama_Jurusan :   <input type="text" name="nama_Jurusan" value="{{ old('nama_Jurusan', @$kelas->nama_Jurusan) }}"></br>
    </br>
    nama_wali_kelas :   <input type="text" name="nama_wali_kelas" value="{{ old('nama_wali_kelas', @$kelas->nama_wali_kelas) }}"></br>
    </br>
    lokasi_ruangan :   <input type="text" name="lokasi_ruangan" value="{{ old('lokasi_ruangan', @$kelas->lokasi_ruangan) }}"></br>
    </br>
    <input type="submit" value="simpan">
</form>