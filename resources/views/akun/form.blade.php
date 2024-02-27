	<div class="container main">
        <div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						{{ $ketForm }} 
						<span class="pull-right clickable panel-toggle panel-button-tab-left"><em class="fa fa-toggle-up"></em></span></div>
					<div class="panel-body">
{{ csrf_field() }}
@if(isset($akun))
    {!! Form::hidden('id', $akun->id) !!}
@endif
								<div class="form-group">
									<label class="col-md-3 control-label" for="name">Kode Akun</label>
									<div class="col-md-9">
										{!! Form::text('kode_akun', null, ['class' => 'form-control']) !!}
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-md-3 control-label" for="name">Nama Akun</label>
									<div class="col-md-9">
										{!! Form::text('nama_akun', null, ['class' => 'form-control']) !!}
									</div>
								</div>
								
								<!-- Form actions -->
								<div class="form-group">
									<div class="col-md-12 widget-right">
										{!!Form::submit($submitButton, ['class' => 'btn btn-default pull-right'])!!}
									</div>
								</div>

					</div>
				</div>
			</div>
		</div>

	</div>	<!--/.main-->
