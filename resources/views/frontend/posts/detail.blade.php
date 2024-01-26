@extends('frontend.layout.app')
@section('content')
    @include('frontend.layout.components.breadcrumb')
    <div class="container">
        <div class="row justify-content-center mb-5">
            <div class="col-md-8">
                <h1>{{ $post->title }}</h1>
                <h6 class="mb-2">By <a href="/posts?author={{ $post->author->username }}"
                        class="text-decoration-none">{{ $post->author->name }}</a> in <a
                        href="/posts?category={{ $post->category->slug }}" class="text-decoration-none">
                        {{ $post->category->name }}</a></h6>
                <hr class="mb-3">
                @if ($post->image)
                    <img src="{{ asset('storage/' . $post->image) }}" class="img-fluid" alt="{{ $post->category->name }}">
                @else
                    <img src="https://source.unsplash.com/1200x500/?{{ $post->category->name }}" class="img-fluid"
                        alt="{{ $post->category->name }}">
                @endif
                <article class="my-3 fs-5">
                    {!! $post->body !!}
                </article>
                <hr>
                <a href="/posts" class="text-decoration-none">Back</a>
            </div>
        </div>
    </div>
@endsection
