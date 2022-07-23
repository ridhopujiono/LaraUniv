<?php

namespace App\Http\Controllers;

use App\Models\Jurusan;
use App\Models\Mahasiswa;
use Illuminate\Http\Request;

class AdminController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function manajemen_jurusan()
    {
        $data = Jurusan::orderBy('created_at', 'desc')->simplePaginate(10);
        return view('admin.jurusan.index', [
            "title" => "Manajemen Jurusan",
            "data" => $data
        ]);
    }


    public function manajemen_jurusan_store(Request $request)
    {
        $create = Jurusan::create(["nama_jurusan" => $request->nama_jurusan, "foto" => $request->foto, "keterangan" => NULL]);
        return redirect()->back();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function manajemen_jurusan_edit($id)
    {
        $data = Jurusan::find($id);
        return view('admin.jurusan.edit', ["data" => $data, "title" => "Edit Jurusan"]);
    }

    public function manajemen_jurusan_update(Request $request, $id)
    {
        $data = Jurusan::find($id)->update([
            "nama_jurusan" => $request->nama_jurusan,
            "foto" => $request->foto,
        ]);
        return redirect('manajemen_jurusan');
    }
    public function manajemen_jurusan_delete($id)
    {
        $mahasiswa = Mahasiswa::where('jurusan_id', $id)->delete();
        $jurusan = Jurusan::find($id)->delete();
        return redirect('manajemen_jurusan');
    }


    public function manajemen_mahasiswa()
    {
        $data = Mahasiswa::orderBy('created_at', 'desc')->simplePaginate(10);
        $jurusan = Jurusan::orderBy('created_at', 'desc')->get();
        return view('admin.mahasiswa.index', [
            "title" => "Manajemen Mahasiswa",
            "data" => $data,
            "jurusan" => $jurusan
        ]);
    }

    public function manajemen_mahasiswa_store(Request $request)
    {
        $create = Mahasiswa::create([
            "npm" => $request->npm,
            "nama" => $request->nama,
            "alamat" => $request->alamat,
            "no_telp" => $request->no_telp,
            "jurusan_id" => $request->jurusan,
            "user_id" => 100,
        ]);
        return redirect()->back();
    }

    public function manajemen_mahasiswa_edit($id)
    {
        $data = Mahasiswa::find($id);
        $jurusan = Jurusan::orderBy('created_at', 'desc')->get();
        return view('admin.mahasiswa.edit', ["data" => $data, "title" => "Edit Mahasiswa", "jurusan" => $jurusan]);
    }

    public function manajemen_mahasiswa_update(Request $request, $id)
    {
        $data = Mahasiswa::find($id)->update([
            "npm" => $request->npm,
            "nama" => $request->nama,
            "alamat" => $request->alamat,
            "no_telp" => $request->no_telp,
            "jurusan_id" => $request->jurusan,
            "user_id" => 100,
        ]);
        return redirect('manajemen_mahasiswa');
    }
    public function manajemen_mahasiswa_delete($id)
    {
        $mahasiswa = Mahasiswa::find($id)->delete();
        return redirect('manajemen_mahasiswa');
    }
}
