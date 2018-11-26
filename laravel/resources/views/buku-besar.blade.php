@extends('template')

@section('main')

	<div class="container main">
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
				@if(Session::has('pesan'))
        			<div class="panel-heading text-center">
        			  <h4 class="alert alert-success">{{ Session::get('pesan') }}</h4>
        			</div>
        		@endif
					<div class="panel-heading">
                        Buku Besar 
				    </div>
					<div class="panel-body">
                        <h4>Daftar Akun : <strong></strong> </h4>
					@foreach($daftar_akun as $data)						
						<div class="col-md-4" style="margin: 5px auto">
							<a href="{{ url('buku-besar/'.$data->id) }}" class="btn btn-default btn-lg btn-block">{{ $data->nama_akun }}</a>
						</div>
						
					@endforeach
					</div>
				</div>
			</div>
		</div><!--/.row-->

	</div>	<!--/.main-->

@stop