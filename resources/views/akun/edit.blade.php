@extends('template')

@section('main')

@include('errors.form_error_list')
    {!! Form::model($akun, ['method' => 'patch', 'class' => 'form-horizontal', 'action' => ['App\Http\Controllers\AkunController@update', $akun->id]]) !!}
        @include('akun.form', ['submitButton' => 'Edit', 'ketForm' => 'Edit Data'])
    {!! Form::close() !!}

@stop