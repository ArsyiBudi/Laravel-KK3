<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
      integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
      <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
</head>
<center>
    belajar php. Halaman ini dari controllers.<br>

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


    <a href="{{ url('/belajar/create') }}">Tambah Data</a>
<table border="1" class="table table-sm">
<thead class="thead">
    <tr class="table-info">
        <th>No</th>
        <th>Nama Lengkap</th>
        <th>Jenis Kelamin</th>
        <th>Golongan darah</th>
        <th>Aksi</th>
    </tr>
    </thead>
    @foreach ($siswa as $i => $row)
    <tr class="table-secondary">
        <td>{{ $i + 1 }}</td>
        <td>{{ $row->nama_lengkap }}</td>
        <td>{{ $row->jenkel }}</td>
        <td>{{ $row->goldar }}</td>
        <td>
            <a href="{{ url('/belajar/' . $row->id . '/edit')}}" class="btn btn-success">Edit</a><br>
            <form action="{{ url('/belajar/' . $row->id)}}" method="POST">
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
