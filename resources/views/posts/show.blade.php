@extends('layouts.blog')
@section('title')
@if($post)
{{ $post->title }}
@if(!Auth::guest() && ($post->author_id == Auth::user()->id || Auth::user()->is_admin()))
<button class="btn" style="float: right"><a href="{{ url('edit/'.$post->slug)}}">Edit Post</a></button>
@endif
@else
Page does not exist
@endif
@endsection
@section('title-meta')
<p>{{ $post->created_at->format('M d,Y \a\t h:i a') }} By <a class="text-danger" href="{{ url('/user/'.$post->author_id)}}">{{ $post->author->name }}</a></p>
@endsection
@section('content')
@if($post)
	<hr/>
<div>
  {!! $post->body !!}
</div>
<div>
  <h2>Leave a comment</h2>
</div>
@if(Auth::guest())
<p>Login to Comment</p>
@else
<div class="panel-body">
  <form method="post" action="/comment/add">
    <input type="hidden" name="_token" value="{{ csrf_token() }}">
    <input type="hidden" name="on_post" value="{{ $post->id }}">
    <input type="hidden" name="slug" value="{{ $post->slug }}">
    <div class="form-group">
      <textarea required="required" placeholder="Enter comment here" name="body" class="form-control"></textarea>
    </div>
    <input type="submit" name='post_comment' class="btn btn-success" value="Post" />
  </form>
</div>
@endif
<div>
  @if($comments)

    @foreach($comments as $comment)
<div class="col-12 col-md-12 p-3">
          <h3>{{ $comment->author->name }}</h3>
          <p>{{ $comment->created_at->format('M d,Y \a\t h:i a') }}</p>
       
          <p>{{ $comment->body }}</p>
     
    @endforeach

  @endif
</div>
@else
404 error
@endif
@endsection