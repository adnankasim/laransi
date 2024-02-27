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
              Data Laporan 
				    </div>
					<div class="panel-body">

                        <h4>Total Data : <strong>{{ $total_jurnal }}</strong> </h4>
                        <table class="table table-striped text-center">
                        <caption class="text-center"> <strong>DAFTAR LAPORAN</strong></caption>
                          <tr>
                            <th class="text-center">No</th>
                            <th class="text-center">Waktu</th>
                            <th class="text-center">Action</th>
                          </tr>
                          <?php $i = 1 ?>
                          @foreach($daftar_jurnal as $data)
                          <tr>
                            <td>{{ $i++ }}</td>
                            <td>{{ date('F Y', strtotime('1-'.$data->waktu)) }}</td>
                            <td>
                              <a href="{{ url('laporan/cetak/'.date('Y-m-d', strtotime('1-'.$data->waktu))) }}" class="btn btn-info">
                                Cetak
                              </a>
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