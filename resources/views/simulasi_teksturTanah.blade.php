@extends('layouts.simulasi')

@section('bodytag')
    <script type="text/javascript">
        function validasi(form) {
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
            var radio_val = check_radio(form.teksturTanah);
            if (radio_val === false)
            {
                alert("Anda harus memilih salah satu");
                return false;
            }
            return (true);
        }
    </script>
<body style="
	background-image: url('img-asset/tekstur Tanah.jpg'); height: 100%;
	width: 100%; 
    /*background-position: center;*/
    background-repeat: no-repeat;
    background-size: cover;
    ">

@endsection
@section('content')
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
  		padding: 5px 60px;
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
      left: 465px;
      top: 525%;
      width: 30%;
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
  margin: 395px 0 0 630px;
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
<form action="{{url('cekTekstur')}}" method="post" onsubmit="return validasi(this)">
    {{csrf_field()}}
 <div class="radio-group">
      <input type="radio" id="tanahliat" name="teksturTanah" value="tanahliat">
        <label for="tanahliat">Tanah Liat</label>
      <input type="radio" id="tanahporus" name="teksturTanah" value="tanahporus">
        <label for="tanahporus">Tanah Porus</label>
  </div>
    <input type="submit" value="NEXT" class="lanjut">
  </form>
@endsection