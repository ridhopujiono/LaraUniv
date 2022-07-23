@extends('admin.template.index')

@section('container')
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body p-5">
                    <form action="{{ url('manajemen_mahasiswa/update') }}/{{ $data->id }}" method="POST">
                        @csrf
                        <div class="form-group">
                            <label for="">Jurusan</label>
                            <select name="jurusan" id="" class="form-control">
                                @foreach ($jurusan as $j)
                                    <option {{ $j->id == $data->jurusan_id ? 'selected' : '' }} value="{{ $j->id }}">
                                        {{ $j->nama_jurusan }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="">NPM</label>
                            <input type="text" class="form-control" name="npm" value="{{ $data->npm }}">
                        </div>
                        <div class="form-group">
                            <label for="">Nama Mahasiswa</label>
                            <input type="text" class="form-control" name="nama" value="{{ $data->nama }}">
                        </div>
                        <div class="form-group">
                            <label for="">Alamat</label>
                            <textarea name="alamat" id="" cols="30" rows="3" class="form-control" value="{{ $data->alamat }}">{{ $data->alamat }}</textarea>
                        </div>
                        <div class="form-group">
                            <label for="">Nomor Telp</label>
                            <input type="text" class="form-control" name="no_telp" value="{{ $data->no_telp }}">
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
