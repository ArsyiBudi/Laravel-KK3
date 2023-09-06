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
<form action="{{ url('belajar', @$siswa->id) }}" method="POST">
    @csrf

    @if(!empty($siswa)) 
        @method('PATCH')
    @endif

    NIS : <input type="text" name="nis" value="{{ old('nis', @$siswa->nis) }}"></br>
    Nama_Lengkap : <input type="text" name="nama_lengkap" value="{{ old('nama_lengkap', @$siswa->nama_lengkap) }}"></br>
    Jenis_kelamin : </br>
    <label><input type="radio" name="jenkel" value="L" {{ old('jenkel' , @$siswa->jenkel) == 'L' ? 'checked' : '' }}>L</label>
    <label><input type="radio" name="jenkel" value="P" {{ old('jenkel' , @$siswa->jenkel) == 'P' ? 'checked' : '' }}>P</label>
    Golongan Darah :
    <select name="goldar">
        <option value="" {{old('goldar', @$siswa->goldar) == '' ? 'selected' : ''}}>- Pilih Goldar</option>
        <option value="A" {{old('goldar', @$siswa->goldar) == 'A' ? 'selected' : ''}}>A</option>
        <option value="B" {{old('goldar', @$siswa->goldar) == 'B' ? 'selected' : ''}}>B</option>
        <option value="O" {{old('goldar', @$siswa->goldar) == 'O' ? 'selected' : ''}}>O</option>
        <option value="AB" {{old('goldar', @$siswa->goldar) == 'AB' ? 'selected' : ''}}>AB</option>
    </select>
    <input type="submit" value="simpan">
</form>