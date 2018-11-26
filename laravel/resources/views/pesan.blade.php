@if(Session::has('pesan'))
$.notify({
	    icon: 'fa fa-thumbs-o-up',
	    message: "<strong> {{Session::get('pesan')}} </strong>"
	},
            {
                type: 'info',
                timer: 4000
            });
@endif