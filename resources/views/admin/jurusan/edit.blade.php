@extends('admin.template.index')

@section('container')
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body p-5">
                    <form action="{{ url('manajemen_jurusan/update') }}/{{ $data->id }}" method="POST">
                        @csrf
                        <div class="form-group">
                            <label for="">Nama Jurusan</label>
                            <input type="text" name="nama_jurusan" class="form-control" value="{{ $data->nama_jurusan }}">
                        </div>
                        <div class="form-group">
                            <label for="">Link Gambar</label>
                            <input type="text" name="foto" class="form-control" value="{{ $data->foto }}">
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary">Simpan</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
