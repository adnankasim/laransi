<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Provinsi;

class FormPemilihServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap the application services.
     *
     * @return void
     */
    public function boot()
    {
        view()->composer('pemilih.form', function($view){
            $view->with('daftar_provinsi', Provinsi::pluck('nama_provinsi', 'id'));
        });

        view()->composer('pemilih.index', function($view){
            $view->with('daftar_provinsi', Provinsi::pluck('nama_provinsi', 'id'));
        });
    }

    /**
     * Register the application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
