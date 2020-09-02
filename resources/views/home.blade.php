@extends('layouts.app')
@section('title')
{{$title}}
@endsection
@section('content')
@if ( !$posts->count() )
There is no post till now. Login and write a new post now!!!
@else
<div class="col-12 col-md-12 p-3">
  @foreach( $posts as $post )
  
      <h3><a class="text-danger" href="{{ url('/'.$post->slug) }}">{{ $post->title }}</a>
        @if(!Auth::guest() && ($post->author_id == Auth::user()->id || Auth::user()->is_admin()))
        @if($post->active == '1')
        <button class="btn" style="float: right"><a class="text-danger" href="{{ url('edit/'.$post->slug)}}">Edit Post</a></button>
        @else
        <button class="btn" style="float: right"><a class="text-danger" href="{{ url('edit/'.$post->slug)}}">Edit Draft</a></button>
        @endif
        @endif
      </h3>
      <p>{{ $post->created_at->format('M d,Y \a\t h:i a') }} By <a class="text-danger" href="{{ url('/user/'.$post->author_id)}}">{{ $post->author->name }}</a></p>
<hr/> 

      <article>
        {!! Str::limit($post->body, $limit = 500, $end = '....... ') !!}
		<br/>
		<div class="text-right">
		<a class="btn btn-danger rounded-pill" href='.url("/".$post->slug).'>Read More</a>
		</div>
      </article>
<hr/> 
  @endforeach
  {!! $posts->render() !!}
</div>
@endif
@endsection
