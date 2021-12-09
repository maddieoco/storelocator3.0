
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <style>
        body {
            margin: 0;
            background-color: white;
            font-family: Poppins, "Helvetica Neue", sans-serif;
        }
        .error-message {
            color: #f22;
        }
        .bg {
            background-image: linear-gradient(to right bottom, #9a9a9a, #848484, #6f6f6f, #5a5a5a, #464646, #3b3b3b, #303030, #252525, #1f1f1f, #191919, #141414, #0c0c0c);
            background-size: 400% 400%;
            animation: gradient 15s ease infinite;
        }
        .columns {
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            max-height: 100vh;
            background-image: url("https://res.cloudinary.com/www-santhoshthomas-xyz/image/upload/v1620796347/portfolio/bg8_ub3ck3.png");
            background-size: contain;
            background-repeat: no-repeat;
            animation-name: MOVE-BG;
            animation-duration: 2s;
            animation-timing-function: linear;
            animation-iteration-count: infinite;
            animation-fill-mode: forwards;
            animation-direction: alternate;
        }
        
        .login-box {
            animation: fadeIn 1s;
            z-index: 10;
            border-radius: 5px;
            position: relative;
            box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
            min-width: 400px;
            min-height: 200px;
            padding: 4rem 3rem;
            background-color: white;
        }
        .login-box a {
            text-decoration: none;
        }
        .login-box .login {
            display: none;
        }
        .login-box .signin {
            animation: fadeIn 0.8s;
        }
        .login-box .signup {
            animation: fadeIn 0.8s;
        }
        .login-box .action p {
            display: inline;
        }
        .login-box .action .signup {
            float: right;
            font-weight: 700;
        }
        .login-box .input-field {
            width: 75%;
            position: relative;
        }
        .login-box .input-field i {
            position: relative;
            position: absolute;
            top: 10px;
            left: 50px;
        }
        .login-box .input-field #password {
            background: url(https://res.cloudinary.com/www-santhoshthomas-xyz/image/upload/v1620796331/portfolio/lock_dnkpk8.png) no-repeat 5%;
            background-size: 20px;
            z-index: 50;
        }
        .login-box .input-field #email {
            background: url(https://res.cloudinary.com/www-santhoshthomas-xyz/image/upload/v1620796341/portfolio/name_1_rgo5hw.png) no-repeat 5%;
            background-size: 20px;
            z-index: 50;
        }
        .login-box .input-field #tel {
            background: url("../../../assets/telephone.png") no-repeat 5%;
            background-size: 20px;
            z-index: 50;
        }
        .login-box .input-field input {
            box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
            width: 100%;
            display: block;
            padding: 15px 35px;
            padding-left: 55px;
            margin: 26px 0;
            border: none;
            border-left: 4px solid #0e1776;
            border-radius: 4px;
        }
        .login-box-button {
            position: relative;
            margin-top: 2rem;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .login-box-button button {
            padding: 0.8rem 2rem;
            background: #0e1776;
            color: white;
            font-weight: 800;
            border: none;
            transition: all 1s ease-in;
            background-position: 0;
        }
        .login-box-button button:active {
            background-image: linear-gradient(to right top, #0e1776, #091b97, #031db9, #011edc, #081dff);
            background-position: 400%;
            transform: scale(1.1);
        }
        .login-box .topline {
            display: inline-block;
            position: relative;
            position: relative;
        }
        .login-box .topline:after {
            content: "";
            position: absolute;
            width: 40%;
            transform: scaleX(1);
            height: 5px;
            top: -5px;
            left: 0;
            background-color: #0e1776;
        }
        @media screen and (max-width: 776px) {
            .login-box {
                padding: 4rem 2rem !important;
                right: unset !important;
                width: 50px !important;
                max-width: 100px;
            }
        }
 
        .pointer-none{
            pointer-events: none;
        }

        .d-none{
            display: none;
        }
    </style>
</head>
<body>
    <head>
        <meta name="viewport" content="width=device-width,initial-scale=1.0">
      </head>
      
      <div class="bg">
      
        <div class="columns ">
      
          <div class="login-box">
            <div class="row">
                <div class="col-md-12" style="background: red" id="errors">
                    
                </div>
            </div>
            <form method="POST">
                {{-- @csrf --}}
              <div class="signin">
                <h1 class="topline">Login</h1>
                <br />
                <div class="input-field">
                  <input placeholder="{{ __('E-Mail Address') }}" id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email"/>
      
                    @error('email')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
      
                <div class="input-field">
                  <input placeholder="{{ __('Password') }}" id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password"/>
      
                    @error('password')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
      
                {{-- <div class="action">
                  <a class="forgot">Forgot Password?</a>
                  <a class="signup" (click)="signOption()">Sign Up</a>
                </div> --}}
      
                <div class="login-box-button">
                  <button class="login__btn" type="button" onclick="Login()">
                    <div class="spinner-border load d-none" role="status">
                        <span class="sr-only">Loading...</span>
                    </div>
                    <div class="login__">LOGIN</div>
                    
                  </button>
                </div>
              </div>
            </form>
      
          </div>
        </div>
      </div>
</body>
</html>

<script src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>
<script>
    $.ajaxSetup({
        headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')}
    });

    function Login(){
        $('.login__btn').addClass('pointer-none');
        $('.login__').hide();
        $('.load').removeClass('d-none');
        var formData = {
            email: $('#email').val(),
            password: $('#password').val(),
        }
        $.ajax({
            url: window.location.origin+'/signin',
            type: 'POST',
            data: formData,
            success: function (res) {
                $('.login__btn').removeClass('pointer-none');
                $('.login__').show();
                $('.load').addClass('d-none');
                if (res.status=='success') {
                    window.location.href = window.location.origin+'/dashboard';
                }
                else if(res.status=='error') {
                    var errorString = '<ul>';
                    $.each( res.data, function( key, value) {
                        errorString += '<li>' + value.message + '</li>';
                    });
                    errorString += '</ul>';
                    $('#errors').html(errorString);
                }
            }
        });
    }
</script>