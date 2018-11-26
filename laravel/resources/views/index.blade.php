@extends('template')

@section('main')

	<div class="container main">
		<div class="row">
			<div class="col-md-6">
				<div class="panel panel-default " style="padding: 50px; border-radius: 25px">
					<div class="panel-heading text-center">
						<strong><a href="{{ url('akun') }}" class="fa fa-database fa-lg"> AKUN </a></strong>
						</div>
				</div>

			</div><!--/.col-->

			<div class="col-md-6">
				<div class="panel panel-default" style="padding: 50px; border-radius: 25px">
					<div class="panel-heading text-center">
						<strong><a href="{{ url('jurnal-umum') }}" class="fa fa-gears fa-lg"> JURNAL UMUM </a></strong>
						</div>
				</div>

			</div><!--/.col-->

			<div class="col-md-6">
				<div class="panel panel-default " style="padding: 50px; border-radius: 25px">
					<div class="panel-heading text-center">
						<strong><a href="{{ url('buku-besar') }}" class="fa fa-file-pdf-o fa-lg"> BUKU BESAR </a></strong>
						</div>
				</div>

			</div><!--/.col-->

			<div class="col-md-6">
				<div class="panel panel-default " style="padding: 50px; border-radius: 25px">
					<div class="panel-heading text-center">
						<strong><a href="{{ url('neraca-saldo') }}" class="fa fa-sign-out fa-lg"> NERACA SALDO </a></strong>
						</div>
				</div>

			</div><!--/.col-->
		</div><!--/.row-->

	</div>	<!--/.main-->

@stop