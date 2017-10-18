@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/guides') }}">Guide</a> :
@endsection
@section("contentheader_description", $guide->$view_col)
@section("section", "Guides")
@section("section_url", url(config('laraadmin.adminRoute') . '/guides'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Guides Edit : ".$guide->$view_col)

@section("main-content")

@if (count($errors) > 0)
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

<div class="box">
	<div class="box-header">
		
	</div>
	<div class="box-body">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				{!! Form::model($guide, ['route' => [config('laraadmin.adminRoute') . '.guides.update', $guide->id ], 'method'=>'PUT', 'id' => 'guide-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'jenis_naga')
					@la_input($module, 'panduan')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/guides') }}">Cancel</a></button>
					</div>
				{!! Form::close() !!}
			</div>
		</div>
	</div>
</div>

@endsection

@push('scripts')
<script>
$(function () {
	$("#guide-edit-form").validate({
		
	});
});
</script>
@endpush
