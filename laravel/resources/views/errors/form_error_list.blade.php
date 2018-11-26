@if($errors->any())
<div class="content text-center">
  @foreach($errors->all() as $error)
   <p class="alert alert-danger text-center">{{$error}}</p>
  @endforeach
</div>
@endif
