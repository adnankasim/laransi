<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>LARANSI - SISTEM INFORMASI AKUNTANSI BERBASIS LARAVEL</title>
	<link href="{{ asset('assets/css/bootstrap.min.css') }}" rel="stylesheet">
	<link href="{{ asset('assets/css/font-awesome.min.css') }}" rel="stylesheet">
	<link href="{{ asset('assets/css/styles.css') }}" rel="stylesheet">
	<!--Custom Font-->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
	<!--[if lt IE 9]>
	<script src="js/html5shiv.js"></script>
	<script src="js/respond.min.js"></script>
	<![endif]-->
</head>
<body>
	<div class="jumbotron text-center" id="headerApps">
        <div>
	        <h1> <strong>LARANSI</strong> </h1>
	        <h4>SISTEM INFORMASI AKUNTANSI BERBASIS LARAVEL</h4>
	    </div>
	</div>

    <nav class="navbar navbar-default">
      <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-menu"><span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span></button>
        </div>
        <div class="collapse navbar-collapse" id="navbar-menu">

<?php
    if(Request::segment(1) === '') $halaman = '';
    if(Request::segment(1) === 'akun') $halaman = 'akun';
    if(Request::segment(1) === 'profil') $halaman = 'profil';
    if(Request::segment(1) === 'jurnal-umum') $halaman = 'jurnal-umum';
    if(Request::segment(1) === 'buku-besar') $halaman = 'buku-besar';
    if(Request::segment(1) === 'neraca-saldo') $halaman = 'neraca-saldo';
    if(Request::segment(1) === 'laporan') $halaman = 'laporan';
?>
            <ul class="nav nav-tabs nav-justified">
@if(empty($halaman))
              <li class="active"><a href="{{ url('/') }}"> <span class="fa fa-dashboard"></span> BERANDA</a></li>
@else
            <li><a href="{{ url('/') }}"> <span class="fa fa-dashboard"></span> BERANDA</a></li>
@endif
              
@if(!empty($halaman) && $halaman == 'profil')
            <li class="active"><a href="{{ url('profil') }}"> <span class="fa fa-university"></span> PROFIL</a></li>
@else
            <li><a href="{{ url('profil') }}"> <span class="fa fa-university"></span> PROFIL</a></li>
@endif

@if(!empty($halaman) && $halaman == 'akun')
            <li class="active"><a href="{{ url('akun') }}"> <span class="fa fa-address-book"></span> AKUN</a></li>
@else
            <li><a href="{{ url('akun') }}"> <span class="fa fa-address-book"></span> AKUN</a></li>
@endif
              
@if(!empty($halaman) && $halaman == 'jurnal-umum')
            <li class="active"><a href="{{ url('jurnal-umum') }}"> <span class="fa fa-balance-scale"></span> JURNAL UMUM</a></li>
@else
            <li><a href="{{ url('jurnal-umum') }}"> <span class="fa fa-balance-scale"></span> JURNAL UMUM</a></li>
@endif
              
@if(!empty($halaman) && $halaman == 'buku-besar')
              <li class="active"> <a href="{{ url('buku-besar') }}"> <span class="fa fa-book"></span> BUKU BESAR</a> </li>
@else
              <li> <a href="{{ url('buku-besar') }}"> <span class="fa fa-book"></span> BUKU BESAR</a> </li>
@endif

@if(!empty($halaman) && $halaman == 'neraca-saldo')
              <li class="active"> <a href="{{ url('neraca-saldo') }}"> <span class="fa fa-money"></span> NERACA SALDO</a> </li>
@else
              <li> <a href="{{ url('neraca-saldo') }}"> <span class="fa fa-money"></span> NERACA SALDO</a> </li>
@endif

@if(!empty($halaman) && $halaman == 'laporan')
              <li class="active"> <a href="{{ url('laporan') }}"> <span class="fa fa-file-pdf-o"></span> LAPORAN</a> </li>
@else
              <li> <a href="{{ url('laporan') }}"> <span class="fa fa-file-pdf-o"></span> LAPORAN</a> </li>
@endif
            
            </ul>
        </div>
      </div>
    </nav>

@yield('main')

	<script src="{{ asset('assets/js/jquery-1.11.1.min.js') }}"></script>
	<script src="{{ asset('assets/js/bootstrap.min.js') }}"></script>
	<script src="{{ asset('assets/js/app.js') }}"></script>

</body>
</html>
