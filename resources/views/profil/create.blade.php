@extends('template')

@section('main')
@include('errors.form_error_list')
    {!! Form::open(['url' => 'profil', 'class' => 'form-horizontal']) !!}
        @include('akun.form', ['submitButton' => 'Tambah', 'ketForm' => 'Tambah Data'])
    {!! Form::close() !!}
@stop