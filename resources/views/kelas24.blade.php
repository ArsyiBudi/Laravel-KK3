<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
      integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<center>

@if(session('success'))
<div class="alert alert-success">
    {{ session('success')}}
</div>
    @endif

    @if(session('error'))
<div class="alert alert-error">
    {{ session('error')}}
</div>
    @endif

    belajar php. Halaman ini dari controllers.<br>
    <a href="{{ url('/kelas24/create') }}">Tambah Data</a>
<table border="1" class="table table-sm">
<thead class="thead">
    <tr class="table-info">
        <th>No</th>
        <th>Nama Kelas</th>
        <th>Nama Jurusan</th>
        <th>nama wali kelas</th>
        <th>lokasi ruangan</th>
        <th>Aksi</th>
    </tr>
</thead>
    @foreach ($kelas as $i => $row)
    <tr class="table-secondary">
        <td>{{ $i + 1 }}</td>
        <td>{{ $row->nama_kelas }}</td>
        <td>{{ $row->nama_Jurusan }}</td>
        <td>{{ $row->nama_wali_kelas }}</td>
        <td>{{ $row->lokasi_ruangan }}</td>
        <td>
            <a href="{{ url('/kelas24/' . $row->id . '/edit') }}">Edit</a>
            <form action="{{ url('/kelas24/' . $row->id)}}" method="POST">
                @method('DELETE')
                @csrf
                <button type="submit" class="btn btn-danger">
                <span class="bi bi-trash"></span> Delete
                </button>
            </form>
        </td>
    </tr>
    @endforeach
</table>
</center>
