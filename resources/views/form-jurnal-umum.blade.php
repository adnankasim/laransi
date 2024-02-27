@extends('template')

@section('main')

	<div class="container main">
        <div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						Input Data 
						<span class="pull-right clickable panel-toggle panel-button-tab-left"><em class="fa fa-toggle-up"></em></span></div>
					<div class="panel-body">
					@include('errors.form_error_list')
					
                        {!! Form::open(['url' => 'jurnal-umum', 'class' => 'form-horizontal']) !!}
								<div class="form-group">
						{{ csrf_field() }}
									<label class="col-md-3 control-label" for="name">Waktu</label>
									<div class="col-md-9">
										{!! Form::date('waktu_transaksi', \Carbon\Carbon::now(), ['class' => 'form-control']) !!}
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-md-3 control-label" for="name">Akun</label>
									<div class="col-md-9">
										{!! Form::select('id_akun', $daftar_akun, null, ['class' => 'form-control', 'placeholder' => '-- Daftar Akun --']) !!}
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-md-3 control-label" for="name">Nominal Rp.</label>
									<div class="col-md-9">
									{!! Form::number('nominal', null, ['class' => 'form-control']) !!}
									</div>
                                </div>
                                
                                <div class="form-group">
									<label class="col-md-3 control-label" for="name">Keterangan</label>
									<div class="col-md-9">
									{!! Form::textarea('keterangan', null, ['class' => 'form-control']) !!}
									</div>
								</div>
                                
                                <div class="form-group">
                                        <label class="col-md-3 control-label" for="name">Tipe</label>
                                        <div class="col-md-9">
                                            <select name="tipe" class="form-control">
                                                <option>-- TIPE --</option>
                                                <option value="d">DEBET</option>
                                                <option value="k">KREDIT</option>
                                            </select>
                                        </div>
                                    </div>

								<!-- Form actions -->
								<div class="form-group">
									<div class="col-md-12 widget-right">
                                        <button type="submit" class="btn btn-default btn-md pull-right">Tambah</button>
									</div>
								</div>
								{!! Form::close() !!}

					</div>
				</div>
			</div>
		</div>

	</div>	<!--/.main-->
@stop