@extends('frontend.layout.app')
@section('content')
    @include('frontend.layout.components.breadcrumb')
    <h1 class="text-center">{{ $heading }}</h1>
    <div class="row justify-content-center mb-3">

        <div class="col-md-6">
            <form action="/posts">
                @if (request('category'))
                    <input type="hidden" name="category" value="{{ request('category') }}" id="">
                @endif
                @if (request('author'))
                    <input type="hidden" name="author" value="{{ request('author') }}" id="">
                @endif
                <div class="input-group mb-3">
                    <input type="text" name="search" class="form-control" placeholder="Search"
                        value="{{ request('search') }}">
                    <button class="btn btn-outline-secondary" type="button" id="button-addon2">Search</button>
                </div>

            </form>
        </div>
    </div>
    <hr class="mb-3">

    @if ($posts->count())
        <div class="card mb-3">
            @if ($posts[0]->image)
                <div class="img-post" style="max-height: 450px; overflow:hidden">
                    <img src="{{ asset('storage/' . $posts[0]->image) }}" class="img-fluid"
                        alt="{{ $posts[0]->category->name }}">

                </div>
            @else
                <img src="https://source.unsplash.com/1200x400/?{{ $posts[0]->category->name }}" class="card-img-top"
                    alt="{{ $posts[0]->category->name }}">
            @endif
            <div class="card-body">
                <a href="/posts/detail/{{ $posts[0]->slug }}" class="text-decoration-none text-dark">
                    <h3 class="card-title">{{ $posts[0]->title }}</h3>
                </a>
                <small class="text-body-secondary">
                    <h6 class="mb-2">By <a href="/posts?author={{ $posts[0]->author->username }}"
                            class="text-decoration-none">{{ $posts[0]->author->name }}</a>
                        in <a class="text-decoration-none" href="/posts?category={{ $posts[0]->category->slug }}">
                            {{ $posts[0]->category->name }}</a>
                        {{ $posts[0]->created_at->diffForHumans() }}
                    </h6>
                </small>
                <p class="card-text">{{ $posts[0]->excerpt }}</p>
                <a class="text-decoration-none btn btn-primary" href="/posts/detail/{{ $posts[0]->slug }}">
                    Read more->
                </a>
            </div>
        </div>


        <div class="container">
            <div class="row">
                @foreach ($posts->skip(1) as $post)
                    <div class="col-md-4 mb-3">
                        <div class="card">
                            <div class="position-absolute px-3 py-2 text-white"
                                style="background-color: rgba(0, 0, 0, 0.7) ">
                                <a class="text-white text-decoration-none"
                                    href="/posts?category={{ $post->category->slug }}">{{ $post->category->name }}</a>
                            </div>
                            @if ($post->image)
                                <img src="{{ asset('storage/' . $post->image) }}" class="img-fluid"
                                    alt="{{ $post->category->name }}">
                            @else
                                <img src="https://source.unsplash.com/500x300/?{{ $post->category->name }}"
                                    class="card-img-top" alt="{{ $post->category->name }}">
                            @endif
                            <div class="card-body">
                                <h5 class="card-title"><a class="text-decoration-none text-dark"
                                        href="/post/{{ $post->slug }}">
                                        <h3>{{ $post->title }}</h3>
                                    </a>
                                </h5>
                                <small class="text-body-secondary">
                                    <h6 class="mb-2">By <a href="/posts?author={{ $post->author->username }}"
                                            class="text-decoration-none">{{ $post->author->name }}</a>
                                        {{ $post->created_at->diffForHumans() }}
                                    </h6>
                                </small>
                                <p class="card-text">{{ $post->excerpt }}</p>
                                <a href="/post/{{ $post->slug }}" class="btn btn-primary">Read More</a>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    @else
        <p class="text-center fs-4">No Post Found</p>
    @endif

    {{ $posts->links() }}
@endsection
