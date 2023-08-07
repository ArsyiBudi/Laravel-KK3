<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
      integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
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
    </tr>
    </thead>
    @foreach ($siswa as $i => $row)
    <tr class="table-secondary">
        <td>{{ $i + 1 }}</td>
        <td>{{ $row->nama_lengkap }}</td>
        <td>{{ $row->jenkel }}</td>
        <td>{{ $row->goldar }}</td>
    </tr>
    @endforeach
</table>
</center>
