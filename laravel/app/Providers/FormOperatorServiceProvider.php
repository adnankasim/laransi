<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Provinsi;

class FormOperatorServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap the application services.
     *
     * @return void
     */
    public function boot()
    {
        view()->composer('operator.form', function($view){
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
