@extends('utama.template.index')
@section('container')
    <style>
        .main-card {
            width: 100%;
        }

        @media only screen and (min-width: 600px) {
            .main-card {
                width: 24%;
            }
        }
    </style>
    <main id="main" style="
            margin-top: 30px;
        ">
        <div class="container">
            <div class="d-flex" style="flex-wrap: wrap;justify-content: space-between;">
                @foreach ($data as $d)
                    <div class="main-card">
                        <div class="card"
                            style="
                                margin-bottom: 25px;
                            ">
                            <img class="card-img-top" src="{{ $d->foto }}" alt="Card image cap">
                            <div class="card-body">
                                {{ $d->nama_jurusan }}
                            </div>
                            <div class="card-footer p-3">
                                <a href="{{ url('jurusan') }}/{{ $d->id }}" class="btn btn-danger float-end"
                                    style="border-radius: 2px">lihat
                                    mahasiswa</a>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </main>
@endsection
