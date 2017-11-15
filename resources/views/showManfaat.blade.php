@extends('layouts.default')
 
@section('content')
<div class="section">
    <div class="card-panel purple darken-3 white-text"><h1 style="text-align: center;">Daftar Manfaat Buah Naga</h1></div>
</div>

<div class="section">
    <div class="row">
        <div class="col-sm-12">
            <div class="well well-lg" style="margin: 85px; margin-top: 5%">
                <table class="table table-condensed table-responsive">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Jenis Buah Naga</th>
                            <th>Kandungan Gizi</th>
                            <th>Manfaat</th>
                        </tr>
                    </thead>
                    <tbody>
                    <?php $index=1;?>
                    @foreach($datas as $data)
                        <tr>
                            <td>{{$index++}}</td>
                            <td>{{$data->jenis_naga}}</td>
                            <td>{!!substr($data->kandungan,0,200)!!}</td>
                            <td>{{$data->manfaat}}</td>
                        </tr>
                    @endforeach
                    </tbody>

                </table>
            </div>
        </div>
    </div>
@endsection