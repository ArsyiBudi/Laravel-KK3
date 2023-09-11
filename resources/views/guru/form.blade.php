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
<form action="{{ url('guru', @$guru->id) }}" method="POST">
    @csrf

    @if(!empty($guru)) 
        @method('PATCH')
    @endif

    NIP : <input type="text" name="nip" value="{{ old('nip', @$guru->nip) }}"></br> 
    Nama_Guru : <input type="text" name="nama_guru" value="{{ old('nama_guru', @$guru->nama_guru) }}"></br>
    Jenis_kelamin :
    <label><input type="radio" name="jenis_kelamin" value="L" {{ old('jenis_kelamin' , @$guru->jenis_kelamin) == 'L' ? 'checked' : '' }}>L</label>
    <label><input type="radio" name="jenis_kelamin" value="P" {{ old('jenis_kelamin' , @$guru->jenis_kelamin) == 'P' ? 'checked' : '' }}>P</label></br>
    Alamat :  <input type="text" name="alamat" value="{{ old('alamat', @$guru->alamat) }}"></br>
    <input type="submit" value="simpan">
</form>