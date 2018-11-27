@extends('template')

@section('main')

	<div class="container-fluid main">
		<div class="row">

			<div class="col-md-4">
				<div class="panel panel-default " style="padding: 50px; border-radius: 25px">
					<div class="panel-heading text-center">
						<strong><a href="{{ url('profil') }}" class="fa fa-university fa-lg"> PROFIL </a></strong>
						</div>
				</div>
			</div><!--/.col-->

			<div class="col-md-4">
				<div class="panel panel-default " style="padding: 50px; border-radius: 25px">
					<div class="panel-heading text-center">
						<strong><a href="{{ url('akun') }}" class="fa fa-address-book fa-lg"> AKUN </a></strong>
						</div>
				</div>
			</div><!--/.col-->

			<div class="col-md-4">
				<div class="panel panel-default" style="padding: 50px; border-radius: 25px">
					<div class="panel-heading text-center">
						<strong><a href="{{ url('jurnal-umum') }}" class="fa fa-balance-scale fa-lg"> JURNAL UMUM </a></strong>
						</div>
				</div>
			</div><!--/.col-->

			<div class="col-md-4">
				<div class="panel panel-default " style="padding: 50px; border-radius: 25px">
					<div class="panel-heading text-center">
						<strong><a href="{{ url('buku-besar') }}" class="fa fa-book fa-lg"> BUKU BESAR </a></strong>
						</div>
				</div>
			</div><!--/.col-->

			<div class="col-md-4">
				<div class="panel panel-default " style="padding: 50px; border-radius: 25px">
					<div class="panel-heading text-center">
						<strong><a href="{{ url('neraca-saldo') }}" class="fa fa-money fa-lg"> NERACA SALDO </a></strong>
						</div>
				</div>
			</div><!--/.col-->

			<div class="col-md-4">
				<div class="panel panel-default " style="padding: 50px; border-radius: 25px">
					<div class="panel-heading text-center">
						<strong><a href="{{ url('laporan') }}" class="fa fa-file-pdf-o fa-lg"> LAPORAN </a></strong>
						</div>
				</div>
			</div><!--/.col-->

		</div><!--/.row-->

	</div>	<!--/.main-->

@stop