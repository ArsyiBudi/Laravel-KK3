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
<form action="{{ url('belajar') }}" method="POST">
    @csrf

    NIS : <input type="text" name="nis" value="{{ old('nis') }}"></br>
    Nama_Lengkap : <input type="text" name="nama_lengkap" value="{{ old('nama_lengkap') }}"></br>
    Jenis_kelamin : </br>
    <label><input type="radio" name="jenkel" value="L">L</label>
    <label><input type="radio" name="jenkel" value="P">P</label>
    Golongan Darah :
    <select name="goldar">
        <option value="">- Pilih Goldar</option>
        <option value="A">A</option>
        <option value="B">B</option>
        <option value="O">O</option>
        <option value="AB">AB</option>
    </select>
    <input type="submit" value="simpan">
</form>
