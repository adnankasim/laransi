<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LaransiController;
use App\Http\Controllers\AkunController;
use App\Http\Controllers\ProfilController;

// Route::get('login', [DashboardController::class, 'login'])->name('login');
// Route::resource('banks', BankController::class);

// beranda

Route::get('/', [LaransiController::class,'index']);

// akun rekening
Route::resource('akun', AkunController::class);

// jurnal umum
Route::get('jurnal-umum', [LaransiController::class, 'showJurnalUmum']);
Route::get('jurnal-umum/create', [LaransiController::class, 'formJurnalUmum']);
Route::get('jurnal-umum/detail/{waktu}', [LaransiController::class, 'detailJurnalUmum']);
Route::post('jurnal-umum', [LaransiController::class, 'storeJurnalUmum']);
Route::get('jurnal-umum/{id}/edit', [LaransiController::class, 'editJurnalUmum']);
Route::patch('jurnal-umum/{id}', [LaransiController::class, 'updateJurnalUmum']);
Route::delete('jurnal-umum/{id}', [LaransiController::class, 'destroyJurnalUmum']);
Route::get('jurnal-umum/cari', [LaransiController::class, 'cariJurnalUmum']);

// buku besar
Route::get('buku-besar', [LaransiController::class, 'showBukuBesar']);
Route::get('buku-besar/{id}', [LaransiController::class, 'akunBukuBesar']);
Route::get('buku-besar/{id}/cari', [LaransiController::class, 'cariBukuBesar']);
Route::get('buku-besar/{id}/{waktu}', [LaransiController::class, 'detailBukuBesar']);

// neraca saldo
Route::get('neraca-saldo', [LaransiController::class, 'showNeracaSaldo']);
Route::get('neraca-saldo/cari', [LaransiController::class, 'cariNeracaSaldo']);
Route::get('neraca-saldo/detail/{waktu}', [LaransiController::class, 'detailNeracaSaldo']);

// profil
Route::resource('profil', ProfilController::class);

Route::get('laporan', [LaransiController::class, 'showLaporan']);
Route::get('laporan/cetak/{waktu}', [LaransiController::class, 'cetakLaporan']);

Route::get('tes', [LaransiController::class, 'tes']);

Route::get('cetak-neraca/{waktu}', [LaransiController::class, 'cetakNeracaSaldo']);


