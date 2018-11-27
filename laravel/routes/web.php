<?php

// beranda
Route::get('/', 'LaransiController@index');

// akun rekening
Route::resource('akun', 'AkunController');

// jurnal umum
Route::get('jurnal-umum', 'LaransiController@showJurnalUmum');
Route::get('jurnal-umum/create', 'LaransiController@formJurnalUmum');
Route::get('jurnal-umum/detail/{waktu}', 'LaransiController@detailJurnalUmum');
Route::post('jurnal-umum', 'LaransiController@storeJurnalUmum');
Route::delete('jurnal-umum/{id}', 'LaransiController@destroyJurnalUmum');
Route::get('jurnal-umum/cari', 'LaransiController@cariJurnalUmum');

// buku besar
Route::get('buku-besar', 'LaransiController@showBukuBesar');
Route::get('buku-besar/{id}', 'LaransiController@akunBukuBesar');
Route::get('buku-besar/{id}/cari', 'LaransiController@cariBukuBesar');
Route::get('buku-besar/{id}/{waktu}', 'LaransiController@detailBukuBesar');

// neraca saldo
Route::get('neraca-saldo', 'LaransiController@showNeracaSaldo');
Route::get('neraca-saldo/cari', 'LaransiController@cariNeracaSaldo');
Route::get('neraca-saldo/detail/{waktu}', 'LaransiController@detailNeracaSaldo');

// profil
Route::resource('profil', 'ProfilController');

Route::get('laporan', 'LaransiController@showLaporan');
Route::get('laporan/cetak/{waktu}', 'LaransiController@cetakLaporan');

Route::get('tes', 'LaransiController@tes');

Route::get('cetak-neraca/{waktu}', 'LaransiController@cetakNeracaSaldo');