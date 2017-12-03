@extends('layouts.simulasi')

@section('bodytag')
    <script type="text/javascript">
        function Validasi(form) {
            function check_radio(radio)
            {
            // memeriksa apakah radio button sudah ada yang dipilih
                for (i = 0; i < radio.length; i++)
                {
                    if (radio[i].checked === true)
                    {
                        return radio[i].value;
                    }
                }
                return false;
            }
            var radio_val = check_radio(form.jenisbuah);
            if (radio_val === false){
                alert("Anda harus memilih salah satu");
                return false;
            }
            var luaslahan = document.getElementById('luasLahan').value;
            var jaraktanam = document.getElementById('jarakTanam').value;

            if  (luaslahan==""||jaraktanam==""){
                alert("Mohon isi semua inputan");
                return (false);
            return (true);
            }
        }
    </script>
<body style="
	background-image: url('img-asset/buah naga budidaya.jpg'); height: 100%;
	width: 100%; 
    /*background-position: center;*/
    background-repeat: no-repeat;
    background-size: cover;
    ">
@endsection
@section('content')
<!-- style tag -->
<style type="text/css">
	@import url("http://fonts.googleapis.com/css?family=Roboto");
	body {
  		background: #332f35;
  		font-family: roboto;
	}

	input[type=radio] {
  		position: absolute;
  		visibility: hidden;
  		display: none;
	}

	label {
  		color: #fff;
  		display: inline-block;
  		cursor: pointer;
  		font-weight: bold;
  		padding: 5px 50px;
	}

	input[type=radio]:checked + label {
  		color: #675f6b;
  		background: #ecf0f1;
	}

	label + input[type=radio] + label {
  		border-left: solid 3px #fff;
	}

	.radio-group {
      position: absolute;
      left: 385px;
      top: 475%;
      width: 40%;
      text-align: center;
  		border: solid 4px #fff;
  		display: inline-block;
  		margin: 20px;
  		border-radius: 15px;
  		overflow: hidden;
}
      

      * {
  box-sizing: border-box;
}

.lanjut {
  cursor: pointer;
  position: absolute;
  display: block;
  margin: 400px 0 0 630px;
  width: 100px;
  height: 100px;
  border: solid 6px #fff;
  border-radius: 100%;
  z-index: 1;
  -webkit-transition: all .2s linear;
  transition: all .2s linear;
}
.lanjut:before, .lanjut:after {
  content: "";
  position: absolute;
  width: 35%;
  height: 10%;
  top: 41%;
  left: 55%;
  background: #fff;
  z-index: 2;
  -webkit-transform: translate(-50%, -50%) rotate(45deg);
          transform: translate(-50%, -50%) rotate(45deg);
  -webkit-transition: all .2s linear;
  transition: all .2s linear;
}
.lanjut:after {
  z-index: 3;
  top: 59%;
  left: 55%;
  -webkit-transform: translate(-50%, -50%) rotate(-45deg);
          transform: translate(-50%, -50%) rotate(-45deg);
}
.lanjut:hover {
  border: solid 8px #777;
}
.lanjut:hover:after, .lanjut:hover:before {
  background: #777;
}
.lanjut:active {
  border: solid 8px #111;
}
.lanjut:active:after, .lanjut:active:before {
  background: #111;
}


	
</style>
<!-- style tag -->
 <form action="{{url('cekJenis') }}" method="post" onsubmit="return Validasi(this)">
    {{csrf_field()}}
    <div class="radio-group">
      <input type="radio" id="merah" name="jenisbuah" value="merah">
        <label for="merah">Buah Merah</label>
      <input type="radio" id="putih" name="jenisbuah" value="putih">
        <label for="putih">Buah Putih</label>
      <input type="radio" id="kuning" name="jenisbuah" value="kuning">
        <label for="kuning">Buah Kuning</label>
    </div>
     <div class="col-sm-12" style="position: relative; margin-top: 26%; width: 35%;margin-left: 13%">
         <div class="row">
             <div class="col-md-2">
                 <label for="luasLahan" class="col-md-2">Luas Lahan (HA)</label>
             </div>
             <div class="col-md-10">
                 <input class="form-control" type="number" id="luasLahan" placeholder="Luas Lahan (HA)" name="luasLahan">
             </div>
         </div>
     </div>
     <div class="col-sm-12" style="position: relative; margin-top: 26%; width: 35%">
         <div class="row">
             <div class="col-md-2">
                 <label for="jarakTanam" class="col-md-2">Jarak Tanaman</label>
             </div>
             <div class="col-md-10">
                 <input class="form-control" type="number" id="jarakTanam" placeholder="Jarak Tanam (per meter)" name="jarakTanam">
             </div>
         </div>
     </div>
     <input type="submit" value="NEXT" class="lanjut">

 </form>
@endsection