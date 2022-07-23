<?php

namespace App\Http\Controllers;

use App\Models\Jurusan;
use App\Models\Mahasiswa;
use Illuminate\Http\Request;

class HalamanUtamaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('utama.index');
    }

    public function jurusan()
    {
        $data = Jurusan::all();
        return view('utama.jurusan', [
            "data" => $data
        ]);
    }
    public function mahasiswa_jurusan($id)
    {
        $jurusan = Jurusan::find($id)->nama_jurusan;
        $data = Mahasiswa::where('jurusan_id', $id)->get();
        return view('utama.mahasiswa_jurusan', [
            "data" => $data,
            "nama_jurusan" => $jurusan
        ]);
    }

    public function tentang()
    {
        return view('utama.tentang');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
