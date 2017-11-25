@extends('la.layouts.auth')

@section('htmlheader_title')
    Log in
@endsection

@section('content')
<link rel="stylesheet" href="{{asset('ccsmasuk/css/style.css')}}">
<body class="hold-transition login-page" style="background-image: url('img-asset/bg.jpg');">
    <div class="login-box">
        <div class="login-logo">
            <a href="{{ url('admin') }}"><b>{{ LAConfigs::getByKey('sitename_part1') }} </b>{{ LAConfigs::getByKey('sitename_part2') }}</a>
        </div>

    @if (count($errors) > 0)
        <div class="alert alert-danger">
            <strong>Whoops!</strong> There were some problems with your input.<br><br>
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <div class="login-box-body" style="opacity: 0.7;border-radius: 8px;">
    <form action="{{ url('/login') }}" method="post" class="login-form">
        <input type="hidden" name="_token" value="{{ csrf_token() }}">
            <label for="email">Silahkan login untuk mengatur akun anda</label>
            <input type="email" class="form-control" placeholder="Input Email" name="email"/>
            <input type="password" class="form-control" placeholder="Input Password" name="password"/>
            
        <div class="row">
            <div class="col-xs-12">
                <div class="checkbox icheck">
                    <button type="submit" class="btn btn-primary btn-block btn-flat">Masuk</button>
                </div>            
            </div><!-- /.col -->
            <div class="col-xs-8">
                <!-- <a href="{{ url('/password/reset') }}">forgot my password</a><br> -->
            </div>
            
        </div>
    </form>

    @include('auth.partials.social_login')
    <!--<a href="{{ url('/register') }}" class="text-center">Register a new membership</a>-->

</div><!-- /.login-box-body -->

</div><!-- /.login-box -->

    @include('la.layouts.partials.scripts_auth')

    <script>
        $(function () {
            $('input').iCheck({
                checkboxClass: 'icheckbox_square-blue',
                radioClass: 'iradio_square-blue',
                increaseArea: '20%' // optional
            });
        });
    </script>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script  src="{{asset('js/index.js')}}"></script>
</body>

@endsection
