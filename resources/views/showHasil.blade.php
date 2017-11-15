@extends('layouts.default')
 
@section('content')
    <div class="section">
        <div class="card-panel purple darken-3 white-text"><h1 style="text-align: center;">Hasil Simulasi</h1></div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <div class="well well-lg" style="margin: 85px; margin-top: 5%; margin-bottom: 20px;">
                <table class="table table-condensed table-responsive">
                    <thead>
                    <tr>
                        <th>Jenis Buah Naga</th>
                        <th>Hasil Produksi (dalam KG)</th>
                        <th>Grade A</th>
                        <th>Grade B</th>
                        <th>Grade C</th>
                    </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Buah {{ Session::get('jenisbuah') }}</td>
                            <td>{{ Session::get('hasilproduksi') }}</td>
                            <td>{{Session::get('gradeA')}}</td>
                            <td>{{Session::get('gradeB')}}</td>
                            <td>{{Session::get('gradeC')}}</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="row center-block text-center" style="margin-top: 5px; margin-bottom: 95px;">
        <div class="col-md-12">
            <div class="col-md-offset-5 col-md-1">
                <button type="button" class="btn btn-primary" onclick="window.print()">Cetak</button>
            </div>
            <div class="col-md-1">
                <a href="{{url('ulang')}}" class="btn btn-primary"><span>Uji Coba Ulang</span></a>
            </div>
        </div>
    </div>
@endsection