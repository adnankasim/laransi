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
                        Data Akun 
                        <a href="{{ url('akun/create') }}" class="btn btn-primary pull-right">Tambah</a>
				    </div>
					<div class="panel-body">
                        <h4>Total Data : <strong>{{ $total_akun }}</strong> </h4>
                        <table class="table table-striped text-center">
                        <caption class="text-center"> <strong>DAFTAR AKUN</strong></caption>
                          <tr>
                            <th class="text-center">No</th>
                            <th class="text-center">Nama</th>
                            <th class="text-center">Kode</th>
                            <th class="text-center">Action</th>
                          </tr>
                          <?php $i = 1 ?>
                        @foreach($daftar_akun as $data)
                          <tr>
                            <td>{{ $i++ }}</td>
                            <td>{{ $data->nama_akun }}</td>
                            <td>{{ $data->kode_akun }}</td>
                            <td>
                              <a href="{{ url('akun/'.$data->id.'/edit') }}" class="btn btn-info">EDIT</a>
                              {!! Form::open(['url' => 'akun/'.$data->id, 'method' => 'delete', 'class' => 'form', 'style' => 'display:inline-block']) !!}
                                    {!! Form::submit('Hapus', ['class' => 'btn btn-danger']) !!}
                              {!! Form::close() !!}
                            </td>
                          </tr>
                        @endforeach
                    </table>

					</div>
				</div>
			</div>
		</div><!--/.row-->

	</div>	<!--/.main-->

@stop