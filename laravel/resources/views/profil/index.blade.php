@extends('template')

@section('main')

	<div class="container main">
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
        @if(Session::has('pesan'))
        <div class="panel-heading text-center">
          <h4 class="btn btn-info btn-block">{{ Session::get('pesan') }}</h4>
        </div>
        @endif
					<div class="panel-heading">
                        Profil Perusahaan 
                        <a href="{{ url('profil/'.$profil->id.'/edit') }}" class="btn btn-primary pull-right">Edit</a>
				    </div>
					<div class="panel-body">
                        <table class="table table-striped text-center">
                        <caption class="text-center"> <strong>DATA PERUSAHAAN</strong></caption>
                          
                          <tr>
                            <th class="text-center">Nama</th>
                            <th class="text-center">{{ $profil->nama_perusahaan }}</th>
                          </tr>

                          <tr>
                            <th class="text-center">Tanggal Berdiri</th>
                            <th class="text-center">{{ $profil->tanggal_berdiri }}</th>
                          </tr>

                          <tr>
                            <th class="text-center">Telepon</th>
                            <th class="text-center">{{ $profil->telepon }}</th>
                          </tr>

                          <tr>
                            <th class="text-center">Alamat</th>
                            <th class="text-center">{{ $profil->alamat_perusahaan }}</th>
                          </tr>
                          
                          <tr>
                            <th class="text-center">Email</th>
                            <th class="text-center">{{ $profil->email }}</th>
                          </tr>

                    </table>

					</div>
				</div>
			</div>
		</div><!--/.row-->

	</div>	<!--/.main-->

@stop