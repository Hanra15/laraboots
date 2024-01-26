@extends('backend.layout.app')
@section('content')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">{{ $page }}</h1>
        <div class="nav">
            <form action="/dashboard/posts/{{ $post->slug }}" method="post" class="d-inline">
                @method('delete')
                @csrf
                <button type="submit" id="delete" class="btn btn-danger m-2" onclick="return confirm('Delete the data?')"><i
                        class="bi bi-trash-fill"></i> Hapus</button>
            </form>
            <a href="/dashboard/posts/{{ $post->slug }}/edit" class="btn btn-warning m-2"><i
                    class="bi bi-pencil-square"></i> Edit</a>
            <a href="/dashboard/posts" class="btn btn-secondary m-2">Back</a>

        </div>
    </div>
    <div class="container">
        <div class="row justify-content-center mb-5">
            <div class="col-md-12">
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

            </div>
        </div>
    </div>
@endsection
