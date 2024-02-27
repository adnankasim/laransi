@extends('template')

@section('main')

	<div class="container main">
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading">
            Detail Buku Besar
                    </div>
					<div class="panel-body">
				    
                        <h4 class="pull-left">Nama Akun : <strong>{{ $akun->nama_akun }}</strong> </h4>
                        <h4 class="pull-right">Kode Akun : <strong>{{ $akun->kode_akun }}</strong> </h4>
                        <h4 class="text-center">Periode : <strong>{{ $periode }}</strong> </h4>
                        <table class="table table-striped text-center">
                          <tr>
                            <th class="text-center" colspan="3">Transaksi</th>
                            <th class="text-center" colspan="2">Saldo</th>
                          </tr>
                          <tr>
                            <th class="text-center">No</th>
                            <th class="text-center">Waktu Transaksi</th>
                            <th class="text-center">Keterangan</th>
                            <th class="text-center">Debet</th>
                            <th class="text-center">Kredit</th>
                          </tr>
                        <?php $i = 1 ?>
                        @foreach($daftar_buku as $data)
                          <tr>
                            <td class="text-center">{{ $i++ }}</td>
                            <td class="text-center">{{ $data->waktu_transaksi }}</td>
                            <td class="text-center">{{ $data->keterangan }}</td>
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
                          </tr>
                        @endforeach

                        <tr>
                          <th colspan="3" class="text-center">Jumlah</th>
                          <th class="text-center">Rp. {{ number_format($total_debet, 0, ',', '.') }},-</th>
                            <th class="text-center">Rp. {{ number_format($total_kredit, 0, ',', '.') }},-</th>
                        </tr>

                        <tr>
                            <th colspan="3" class="text-center">Saldo</th>
                            <th colspan="2" class="text-center">
                            @if( substr($akun->kode_akun, 0, 1) === '1' ||  substr($akun->kode_akun, 0, 1) === '4' )
                            
                            Rp. {{ number_format($total_debet - $total_kredit, 0, ',', '.') }},-
                            
                            @elseif( substr($akun->kode_akun, 0, 1) === '2' ||  substr($akun->kode_akun, 0, 1) === '3' || substr($akun->kode_akun, 0, 1) === '5' )
                            
                            Rp. {{ number_format($total_kredit - $total_debet, 0, ',', '.') }},-
                            
                            @endif
                            </th>
                        </tr>

                        <tr>
                            <th colspan="3" class="text-center">Terbilang</th>
                            <th colspan="2" class="text-center">
                            <em>
                            @if( substr($akun->kode_akun, 0, 1) === '1' ||  substr($akun->kode_akun, 0, 1) === '4')
                            {{ ucwords(terbilang($total_debet - $total_kredit)) }} Rupiah
                            @elseif( substr($akun->kode_akun, 0, 1) === '2' ||  substr($akun->kode_akun, 0, 1) === '3' || substr($akun->kode_akun, 0, 1) === '5')
                             {{ ucwords(terbilang($total_kredit - $total_debet)) }} Rupiah 
                            @endif
                            </em>
                            </th>
                        </tr>

                    </table>

					</div>
				</div>
			</div>
		</div><!--/.row-->

	</div>	<!--/.main-->
@stop