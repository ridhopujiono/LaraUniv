@extends('utama.template.index')
@section('container')
    <main id="main" style="
            margin-top: 30px;
        ">
        <div class="container mb-5">
            <h4 class="text-center mb-4">{{ $nama_jurusan }}</h4>
            <table class="table">
                <thead class="bg-secondary text-white">
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">NPM</th>
                        <th scope="col">Nama Mahasiswa</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($data as $key => $d)
                        <tr>
                            <th scope="row">{{ $key + 1 }}</th>
                            <td>{{ $d->npm }}</td>
                            <td>{{ $d->nama }}</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </main>
@endsection
