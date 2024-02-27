<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\AkunRequest;
use App\Models\Akun;
use Illuminate\Support\Facades\Session;

class AkunController extends Controller
{
    public function index()
    {
        $daftar_akun = Akun::all();
        $total_akun = $daftar_akun->count();
        return view('akun.index', compact('daftar_akun', 'total_akun'));
    }

    public function create()
    {
        return view('akun.create');
    }

    public function store(AkunRequest $request)
    {
        Akun::create($request->all());
        Session::flash('pesan', 'Akun Berhasil Disimpan');
        return redirect('akun');
    }

    public function edit(Akun $akun)
    {
        return view('akun.edit', compact('akun'));
    }

    public function update(AkunRequest $request, Akun $akun)
    {
        $akun->update($request->all());
        Session::flash('pesan', 'Akun Berhasil Diupdate');
        return redirect('akun');
    }

    public function destroy(Akun $akun)
    {
        $akun->delete();
        Session::flash('pesan', 'Akun Berhasil Dihapus');
        return redirect('akun');
    }
}
