@extends('template')

@section('main')

@include('errors.form_error_list')
    {!! Form::model($profil, ['method' => 'patch', 'class' => 'form-horizontal', 'action' => ['App\Http\Controllers\ProfilController@update', $profil->id]]) !!}
        @include('profil.form', ['submitButton' => 'Edit', 'ketForm' => 'Edit Data'])
    {!! Form::close() !!}

@stop