<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">

  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>{{ $post->title }}</title>
  <meta name="twitter:title" content="{{ $post->title }}">
  <meta property="og:title" content="{{ $post->title }}">
<link rel="icon" href="https://pointofsale-sourcecode-laravel.sourceforge.io//lara.png">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
  <link href="{{ asset('/css/app.css') }}" rel="stylesheet">
</head>

<body>
    <div class="container-fluid">
  <div class="container">
    @if (Session::has('message'))
    <div class="flash alert-info">
      <p class="panel-body">
        {{ Session::get('message') }}
      </p>
    </div>
    @endif
    @if ($errors->any())
    <div class='flash alert-danger'>
      <ul class="panel-body">
        @foreach ( $errors->all() as $error )
        <li>
          {{ $error }}
        </li>
        @endforeach
      </ul>
    </div>
    @endif
    <div class="row">
		<div class="col-12 col-md-12 text-center">
	<img class="img-fluid" width="220" src="{{URL::asset('/images/laravels.svg')}}"/>
	</div>
      <div class="col-12 col-md-3 p-3 p-md-3">
<div class="shadow bg-danger text-white text-center p-3 rounded">
 
      
      		  @if (Auth::guest())
        
            <a class="text-light" href="{{ url('/') }}">Home</a>
           <hr class="bg-white">
		
            <a class="text-light" href="{{ url('/home') }}">Blog</a>
			 <hr class="bg-white">
        
            <a class="text-light" href="{{ url('/get-started-now') }}">Get Started</a>
			 <hr class="bg-white">
          
            <a class="text-light" href="{{ url('/download-laravel-blogs') }}">Download</a>
			 <hr class="bg-white">
         

      @else
		
            <a class="text-light" href="{{ url('/') }}">Home</a>
           <hr class="bg-white">
		 
            <a class="text-light" href="{{ url('/get-started-now') }}">Get Started</a>
			 <hr class="bg-white">
         
            <a class="text-light" href="{{ url('/download-laravel-blogs') }}">Download</a>
			 <hr class="bg-white">
       
            <a class="text-light" href="{{ url('/home') }}">Blog</a>
			 <hr class="bg-white">
         
            <a class="text-light" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Login as {{ Auth::user()->name }} <span class="caret"></span></a>
           
              @if (Auth::user()->can_post())
            
                <a class="text-light" href="{{ url('/new-post') }}">Add new post</a>
            
                <a class="text-light" href="{{ url('/user/'.Auth::id().'/posts') }}">My Posts</a>
            
              @endif
           
                <a class="text-light" href="{{ url('/user/'.Auth::id()) }}">My Profile</a>
             
                <a class="text-light" href="{{ url('/logout') }}">Logout</a>
             
            
          @endif
        
</div>
	  </div>
      <div class="col-12 col-md-8 p-3">
	  <div class="p-5 rounded border border-light shadow">
            <h2>@yield('title')</h2>
            @yield('title-meta')
            @yield('content')
      </div>
    </div> </div>
    <div class="row">
         <div class="col-md-12 col-md-12 text-center">
         <p>
		<small>
		Powered by <a href="https://larablog.sourceforge.io/" class="text-danger">Laravel Blogs</a> made with ❤ by <a class="text-danger" href="https://mesinkasironline.web.app">mesinkasironline.web.app</a>
		</small>
		</p>
      </div>
  </div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</body>

</html>
