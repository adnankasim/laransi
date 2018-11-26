<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\JurnalRequest;
use App\Akun;
use App\Jurnal;
use Session;
use DB;
use Carbon\Carbon;

class LaransiController extends Controller
{
    // beranda
    public function index()
    {
        return view('index');
    }

    // jurnal umum
    public function showJurnalUmum()
    {
        $daftar_jurnal = Jurnal::selectRaw("CONCAT(MONTH(waktu_transaksi), '-', YEAR(waktu_transaksi)) as waktu")->distinct()->get();
        
        $total_jurnal = $daftar_jurnal->count();
        
        return view('jurnal-umum',  compact('daftar_jurnal', 'total_jurnal'));
    }

    public function detailJurnalUmum(Request $request, $waktu)
    {
        if(empty($waktu)) return redirect('jurnal-umum');
        
        $bulan = date('m', strtotime($waktu));
        $tahun = date('Y', strtotime($waktu));
        $periode = date('F Y', strtotime($waktu));

        $daftar_jurnal = Jurnal::whereMonth('waktu_transaksi', $bulan)->whereYear('waktu_transaksi', $tahun)->orderBy('waktu_transaksi', 'asc')->get();

        $total_debet = Jurnal::where('tipe', 'd')->whereMonth('waktu_transaksi', $bulan)->whereYear('waktu_transaksi', $tahun)->orderBy('waktu_transaksi', 'asc')->sum('nominal');

        $total_kredit = Jurnal::where('tipe', 'k')->whereMonth('waktu_transaksi', $bulan)->whereYear('waktu_transaksi', $tahun)->orderBy('waktu_transaksi', 'asc')->sum('nominal');
        
        $total_jurnal = $daftar_jurnal->count();

        return view('jurnal-umum-detail',  compact('daftar_jurnal', 'total_jurnal', 'periode', 'total_debet', 'total_kredit'));
    }
    
    public function cariJurnalUmum(Request $request)
    {
        $bulan = $request->input('bulan');
        $tahun = $request->input('tahun');
        
        $waktu = $tahun.'-'.$bulan.'-01';
        $periode = date('F Y', strtotime($waktu));

        if(empty($bulan) || empty($tahun)) return redirect('jurnal-umum');

        $daftar_jurnal = Jurnal::whereMonth('waktu_transaksi', $bulan)->whereYear('waktu_transaksi', $tahun)->orderBy('waktu_transaksi', 'asc')->get();
        
        $total_debet = Jurnal::where('tipe', 'd')->whereMonth('waktu_transaksi', $bulan)->whereYear('waktu_transaksi', $tahun)->orderBy('waktu_transaksi', 'asc')->sum('nominal');
        
        $total_kredit = Jurnal::where('tipe', 'k')->whereMonth('waktu_transaksi', $bulan)->whereYear('waktu_transaksi', $tahun)->orderBy('waktu_transaksi', 'asc')->sum('nominal');
        
        $total_jurnal = $daftar_jurnal->count();
        
        if(!($total_jurnal)) return redirect('jurnal-umum')->with('pesan', "Jurnal Umum dengan Periode $bulan-$tahun tidak ditemukan");

        return view('jurnal-umum-detail',  compact('daftar_jurnal', 'total_jurnal', 'periode', 'total_debet', 'total_kredit'));
    }

    public function formJurnalUmum()
    {
        $daftar_akun = Akun::pluck('nama_akun', 'id');
        return view('form-jurnal-umum', compact('daftar_akun'));
    }

    public function storeJurnalUmum(JurnalRequest $request)
    {
        Jurnal::create($request->all());
        Session::flash('pesan', 'Transaksi Berhasil Disimpan');
        return redirect('jurnal-umum');
    }

    public function destroyJurnalUmum($id)
    {
        Jurnal::destroy($id);
        Session::flash('pesan', 'Transaksi Berhasil Dihapus');
        return redirect('jurnal-umum');   
    }


    // buku besar
    public function showBukuBesar()
    {
        $daftar_akun = Akun::all();
        return view('buku-besar', compact('daftar_akun'));
    }

    public function akunBukuBesar($id)
    {
        $daftar_buku = Jurnal::selectRaw("CONCAT(MONTH(waktu_transaksi), '-', YEAR(waktu_transaksi)) as waktu")->where('id_akun', $id)->distinct()->get();
        
        $total_buku = $daftar_buku->count();
        $akun = Akun::findOrFail($id);
        
        return view('akun-buku-besar',  compact('daftar_buku', 'total_buku', 'akun'));
    }

    public function detailBukuBesar($id, $waktu)
    {
        if(empty($waktu) || empty($id)) return redirect('buku-besar');
        
        $bulan = date('m', strtotime($waktu));
        $tahun = date('Y', strtotime($waktu));
        $periode = date('F Y', strtotime($waktu));

        $daftar_buku = Jurnal::whereMonth('waktu_transaksi', $bulan)->whereYear('waktu_transaksi', $tahun)->orderBy('waktu_transaksi', 'asc')->where('id_akun', $id)->get();

        $total_debet = Jurnal::where('tipe', 'd')->whereMonth('waktu_transaksi', $bulan)->whereYear('waktu_transaksi', $tahun)->orderBy('waktu_transaksi', 'asc')->where('id_akun', $id)->sum('nominal');

        $total_kredit = Jurnal::where('tipe', 'k')->whereMonth('waktu_transaksi', $bulan)->whereYear('waktu_transaksi', $tahun)->orderBy('waktu_transaksi', 'asc')->where('id_akun', $id)->sum('nominal');
        
        $total_buku = $daftar_buku->count();

        $akun = Akun::findOrFail($id);

        return view('detail-buku-besar', compact('daftar_buku', 'total_buku', 'periode', 'total_debet', 'total_kredit', 'akun'));
    }

    public function cariBukuBesar($id, Request $request)
    {
        $bulan = $request->input('bulan');
        $tahun = $request->input('tahun');
        
        $waktu = $tahun.'-'.$bulan.'-01';
        $periode = date('F Y', strtotime($waktu));
        
        if(empty($id) || empty($bulan) || empty($tahun)) return redirect('buku-besar');

        $daftar_buku = Jurnal::whereMonth('waktu_transaksi', $bulan)->whereYear('waktu_transaksi', $tahun)->orderBy('waktu_transaksi', 'asc')->where('id_akun', $id)->get();

        $total_debet = Jurnal::where('tipe', 'd')->whereMonth('waktu_transaksi', $bulan)->whereYear('waktu_transaksi', $tahun)->orderBy('waktu_transaksi', 'asc')->where('id_akun', $id)->sum('nominal');

        $total_kredit = Jurnal::where('tipe', 'k')->whereMonth('waktu_transaksi', $bulan)->whereYear('waktu_transaksi', $tahun)->orderBy('waktu_transaksi', 'asc')->where('id_akun', $id)->sum('nominal');
        
        $total_buku = $daftar_buku->count();

        $akun = Akun::findOrFail($id);

        if(!($total_buku)) return redirect('buku-besar')->with('pesan', "Buku Besar dengan Periode $bulan-$tahun tidak ditemukan");

        return view('detail-buku-besar', compact('daftar_buku', 'total_buku', 'periode', 'total_debet', 'total_kredit', 'akun'));

    }

    // neraca saldo
    public function showNeracaSaldo()
    {
        $daftar_neraca = Jurnal::selectRaw("CONCAT(MONTH(waktu_transaksi), '-', YEAR(waktu_transaksi)) as waktu")->distinct()->get();
        
        $total_neraca = $daftar_neraca->count();
        
        return view('neraca-saldo',  compact('daftar_neraca', 'total_neraca'));
    }

    public function detailNeracaSaldo(Request $request, $waktu)
    {
        if(empty($waktu)) return redirect('neraca-saldo');
        
        $total_akun = Akun::all()->count();

        $bulan = date('m', strtotime($waktu));
        $tahun = date('Y', strtotime($waktu));
        $periode = date('F Y', strtotime($waktu));

        $total_saldo_debet = 0;
        $total_saldo_kredit = 0;

        for($i = 1; $i <= $total_akun; $i++){

            $daftar_buku[$i] = Jurnal::whereMonth('waktu_transaksi', $bulan)->whereYear('waktu_transaksi', $tahun)->orderBy('waktu_transaksi', 'asc')->where('id_akun', $i)->get();
            
            $total_debet[$i] = Jurnal::where('tipe', 'd')->whereMonth('waktu_transaksi', $bulan)->whereYear('waktu_transaksi', $tahun)->orderBy('waktu_transaksi', 'asc')->where('id_akun', $i)->sum('nominal');
            
            $total_kredit[$i] = Jurnal::where('tipe', 'k')->whereMonth('waktu_transaksi', $bulan)->whereYear('waktu_transaksi', $tahun)->orderBy('waktu_transaksi', 'asc')->where('id_akun', $i)->sum('nominal');
            
            $akun[$i] = Akun::findOrFail($i);
            
            if( substr($akun[$i]->kode_akun, 0, 1) === '1' ||  substr($akun[$i]->kode_akun, 0, 1) === '4'){
                $debet[$i] = $total_debet[$i] - $total_kredit[$i];
                $kredit[$i] = 0;
            }elseif( substr($akun[$i]->kode_akun, 0, 1) === '2' ||  substr($akun[$i]->kode_akun, 0, 1) === '3' || substr($akun[$i]->kode_akun, 0, 1) === '5'){
                $kredit[$i] = $total_kredit[$i] - $total_debet[$i];
                $debet[$i] = 0;
            }
            
            $data[$i] = [
                'nama_akun' => $akun[$i]->nama_akun,
                'debet' => $debet[$i],
                'kredit' => $kredit[$i],
            ];
            
            $total_saldo_debet += $data[$i]['debet']; 
            $total_saldo_kredit += $data[$i]['kredit']; 
        }

        return view('detail-neraca-saldo', compact('data', 'total_saldo_debet', 'total_saldo_kredit', 'periode'));
    }
    
    public function cariNeracaSaldo(Request $request)
    {
        $bulan = $request->input('bulan');
        $tahun = $request->input('tahun');
        
        $waktu = $tahun.'-'.$bulan.'-01';
        $periode = date('F Y', strtotime($waktu));
        
        if(empty($bulan) || empty($tahun)) return redirect('neraca-saldo');

        $total_akun = Akun::all()->count();

        $total_saldo_debet = 0;
        $total_saldo_kredit = 0;

        for($i = 1; $i <= $total_akun; $i++){

            $daftar_buku[$i] = Jurnal::whereMonth('waktu_transaksi', $bulan)->whereYear('waktu_transaksi', $tahun)->orderBy('waktu_transaksi', 'asc')->where('id_akun', $i)->get();
            
            $total_debet[$i] = Jurnal::where('tipe', 'd')->whereMonth('waktu_transaksi', $bulan)->whereYear('waktu_transaksi', $tahun)->orderBy('waktu_transaksi', 'asc')->where('id_akun', $i)->sum('nominal');
            
            $total_kredit[$i] = Jurnal::where('tipe', 'k')->whereMonth('waktu_transaksi', $bulan)->whereYear('waktu_transaksi', $tahun)->orderBy('waktu_transaksi', 'asc')->where('id_akun', $i)->sum('nominal');
            
            $akun[$i] = Akun::findOrFail($i);
            
            if( substr($akun[$i]->kode_akun, 0, 1) === '1' ||  substr($akun[$i]->kode_akun, 0, 1) === '4'){
                $debet[$i] = $total_debet[$i] - $total_kredit[$i];
                $kredit[$i] = 0;
            }elseif( substr($akun[$i]->kode_akun, 0, 1) === '2' ||  substr($akun[$i]->kode_akun, 0, 1) === '3' || substr($akun[$i]->kode_akun, 0, 1) === '5'){
                $kredit[$i] = $total_kredit[$i] - $total_debet[$i];
                $debet[$i] = 0;
            }
            
            $data[$i] = [
                'nama_akun' => $akun[$i]->nama_akun,
                'debet' => $debet[$i],
                'kredit' => $kredit[$i],
            ];
            
            $total_saldo_debet += $data[$i]['debet']; 
            $total_saldo_kredit += $data[$i]['kredit']; 
        }

        if($total_saldo_debet === 0 && $total_saldo_kredit === 0) return redirect('neraca-saldo')->with('pesan', "Neraca Saldo dengan Periode $bulan-$tahun tidak ditemukan");

        return view('detail-neraca-saldo', compact('data', 'total_saldo_debet', 'total_saldo_kredit', 'periode'));
    }

}
