@extends('la.layouts.app')

@section('htmlheader_title')
	Location View
@endsection


@section('main-content')
<div class="tab-content">
				<div class="panel infolist">
					<div class="panel-default panel-heading">
						<h4>General Info</h4>
					</div>
					<div class="panel-body">
						@la_display($module, 'instansi')
						@la_display($module, 'lokasi_instansi')
						@la_display($module, 'jenis_naga')
					</div>
				</div>
			</div>					
</body>
</html>
@endsection