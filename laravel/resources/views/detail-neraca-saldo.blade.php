@extends('template')

@section('main')

	<div class="container main">
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading">
                        Neraca Saldo {{ $periode }} 
				    </div>
					<div class="panel-body">
                        <table class="table table-striped text-center">
                          <tr>
                            <th class="text-center" >No</th>
                            <th class="text-center" >Akun</th>
                            <th class="text-center" >Debet</th>
                            <th class="text-center" >Kredit</th>
                          </tr>
                          <?php $i = 1 ?>
                          @foreach($data as $item)
                          <tr>
                            <td class="text-center">{{ $i++ }}</td>
                            <td class="text-center">{{ $item['nama_akun'] }}</td>
                            <td>
                              Rp. {{ number_format($item['debet'], 0, ',', '.') }},-
                            </td>
                            <td>
                              Rp. {{ number_format($item['kredit'], 0, ',', '.') }},-
                            </td>
                          </tr>
                        @endforeach
                        <tr>
                          <th colspan="2" class="text-center">Total</th>
                          <th class="text-center">Rp. {{ number_format($total_saldo_debet, 0, ',', '.') }},-</th>
                          <th class="text-center">Rp. {{ number_format($total_saldo_kredit, 0, ',', '.') }},-</th>
                        </tr>

                        <tr>
                          <th colspan="2" class="text-center">TERBILANG</th>
                          <th class="text-center"> <em> {{ ucwords(terbilang($total_saldo_debet)) }} Rupiah</em> </th>
                          <th class="text-center"> <em> {{ ucwords(terbilang($total_saldo_kredit)) }} Rupiah</em></th>
                        </tr>

                    </table>

					</div>
				</div>
			</div>
		</div><!--/.row-->

	</div>	<!--/.main-->

@stop