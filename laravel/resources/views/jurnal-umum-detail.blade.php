@extends('template')

@section('main')

	<div class="container main">
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading">
                        Detail Jurnal Umum 
                        <a href="{{ url('jurnal-umum/create') }}" class="btn btn-primary pull-right">Tambah</a>
				    </div>
					<div class="panel-body">
                        <h4 class="pull-left">Total Data : <strong>{{ $total_jurnal }}</strong> </h4>
                        <h4 class="pull-right">Periode : <strong>{{ $periode }}</strong> </h4>
                        <table class="table table-striped text-center">
                          <tr>
                            <th class="text-center">No</th>
                            <th class="text-center">Waktu</th>
                            <th class="text-center">Akun</th>
                            <th class="text-center">Debet</th>
                            <th class="text-center">Kredit</th>
                            <th class="text-center">Action</th>
                          </tr>
                          <?php $i = 1 ?>
                          @foreach($daftar_jurnal as $data)
                          <tr>
                            <td>{{ $i++ }}</td>
                            <td>{{ $data->waktu_transaksi }}</td>
                            <td>{{ $data->akun->nama_akun }}</td>
                            <td>
                            @if($data->tipe === 'd')
                              Rp. {{ number_format($data->nominal, 0, ',', '.') }},-
                            @else
                              -
                            @endif
                            </td>
                            <td>
                            @if($data->tipe === 'k')
                              Rp. {{ number_format($data->nominal, 0, ',', '.') }},-
                            @else
                              -
                            @endif
                            </td>
                            <td>
                            <a href="{{ url('jurnal-umum/'.$data->id.'/edit') }}" class="btn btn-info">EDIT</a>
                              {!! Form::open(['url' => 'jurnal-umum/'.$data->id, 'method' => 'delete', 'class' => 'form', 'style' => 'display:inline-block']) !!}
                                    {!! Form::submit('Hapus', ['class' => 'btn btn-danger']) !!}
                              {!! Form::close() !!}
                            </td>
                          </tr>
                        @endforeach

                        <tr>
                            <th colspan="3" class="text-center">TOTAL</th>
                            <th class="text-center">Rp. {{ number_format($total_debet, 0, ',', '.') }},-</th>
                            <th class="text-center">Rp. {{ number_format($total_kredit, 0, ',', '.') }},-</th>

                            @if($total_debet === $total_kredit)
                            <th class="text-center alert alert-success"> 
                                BALANCE
                            </th>
                            @else
                            <th class="text-center alert alert-danger"> 
                                NOT BALANCE
                            </th>
                            @endif
                        </tr>

                        <tr>
                            <th colspan="3" class="text-center">TERBILANG</th>
                            <th class="text-center"> <em> {{ ucwords(terbilang($total_debet)) }} Rupiah</em></th>
                            <th class="text-center"> <em> {{ ucwords(terbilang($total_kredit)) }} Rupiah</em></th>
                        </tr>

                    </table>

					</div>
				</div>
			</div>
		</div><!--/.row-->

	</div>	<!--/.main-->

@stop