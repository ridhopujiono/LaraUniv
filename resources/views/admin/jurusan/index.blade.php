@extends('admin.template.index')

@section('container')
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body p-5">
                    <button data-toggle="modal" data-target="#modalTambah" class="btn btn-primary mb-3">Tambah
                        Jurusan</button>
                    <table class="table table-borderless table-striped">
                        <thead class="table-success">
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Nama Jurusan</th>
                                <th scope="col">Jumlah Mahasiswa</th>
                                <th scope="col">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($data as $key => $d)
                                <tr>
                                    <th scope="row">{{ $key + 1 }}</th>
                                    <td>{{ $d->nama_jurusan }}</td>
                                    <td>{{ $d->jumlah }}</td>
                                    <td>
                                        <div class="d-inline">
                                            <a href="{{ url('manajemen_jurusan/edit') }}/{{ $d->id }}">Edit</a>
                                            |
                                            <a href="{{ url('manajemen_jurusan/hapus') }}/{{ $d->id }}"
                                                class="text-danger">Hapus</a>
                                        </div>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                    {{ $data->links() }}
                </div>
            </div>
        </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="modalTambah" tabindex="-1" role="dialog" aria-labelledby="modelTitleId"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Tambah Jurusan</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="{{ url('manajemen_jurusan/store') }}" method="POST">
                        @csrf
                        <div class="form-group">
                            <label for="">Nama Jurusan</label>
                            <input type="text" class="form-control" name="nama_jurusan">
                        </div>
                        <div class="form-group">
                            <label for="">Link Gambar</label>
                            <input type="text" class="form-control" name="foto">
                        </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Keluar</button>
                    <button type="submit" class="btn btn-primary">Simpan</button>
                </div>
                </form>
            </div>
        </div>
    </div>
@endsection
