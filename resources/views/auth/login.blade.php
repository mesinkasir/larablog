@extends('layouts.app')

@section('content')
<div class="row">
        <div class="col-12 col-md-12">

 <form method="POST" action="{{ route('login') }}">
                        @csrf
   <label for="email" class="col-form-label text-md-right">{{ __('E-Mail Address') }}</label>

                         <input id="email" type="email" class="col-12 form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>
   @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                         
                            <label for="password">{{ __('Password') }}</label>

                           
                                <input id="password" type="password" class="col-12 form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">

                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                         

                      
                                    <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>

                                    <label class="form-check-label" for="remember">
                                        {{ __('Remember Me') }}
                                    </label>
                              <br/>

                                <button type="submit" class="btn btn-danger btn-lg rounded col-md-6">
                                    {{ __('Login') }}
                                </button>

                                @if (Route::has('password.request'))
                                    <a class="btn btn-link" href="{{ route('password.request') }}">
                                        {{ __('Forgot Your Password?') }}
                                    </a>
                                @endif
                           
                    </form>
                </div>
            </div>
@endsection
