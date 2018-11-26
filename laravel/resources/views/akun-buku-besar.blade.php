@extends('template')

@section('main')

	<div class="container main">
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading">
              Buku Besar {{ $akun->nama_akun }} 
				    </div>
					<div class="panel-body">

{!! Form::open(['url' => 'buku-besar/'.$akun->id.'/cari', 'method' => 'get', 'class' => 'form-inline text-center']) !!}
                  <div class="form-group">
                    <label for="name">Bulan</label>
                    {!! Form::selectMonth('bulan', null, ['class' => 'form-control', 'placeholder' => '-- Bulan --']) !!}
                  </div>
                  <div class="form-group">
                    <label for="name">Tahun</label>
                    {!! Form::selectRange('tahun', 2018, 2050, null, ['class' => 'form-control', 'placeholder' => '-- Tahun --']) !!}
                    <div class="form-group">
                        <button type="submit" class="btn btn-default btn-md">Cari</button>
                    </div>
                  </div>
{!! Form::close() !!}
                    <br>

                        <h4>Total Data : <strong>{{ $total_buku }}</strong> </h4>
                        <table class="table table-striped text-center">
                        <caption class="text-center"> <strong>Daftar Buku Besar {{ $akun->nama_akun }}</strong></caption>
                          <tr>
                            <th class="text-center">No</th>
                            <th class="text-center">Waktu</th>
                            <th class="text-center">Action</th>
                          </tr>
                          <?php $i = 1 ?>
                          @foreach($daftar_buku as $data)
                          <tr>
                            <td>{{ $i++ }}</td>
                            <td>{{ date('F Y', strtotime('1-'.$data->waktu)) }}</td>
                            <td>
                              <a href="{{ url('buku-besar/'.$akun->id.'/'.date('Y-m-d', strtotime('1-'.$data->waktu))) }}" class="btn btn-info">
                                Detail
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