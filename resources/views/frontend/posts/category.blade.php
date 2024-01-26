@extends('frontend.layout.app')
@section('content')
    @include('frontend.layout.components.breadcrumb')
    <div class="row">
        @foreach ($categories as $category)
            <div class="col-md-4">
                <div class="card text-bg-dark">
                    <a href="/posts?category={{ $category->slug }}" class="text-white">
                        <img src="https://source.unsplash.com/500x500/?{{ $category->name }}" class="card-img"
                            alt="{{ $category->name }}">
                        <div class="card-img-overlay d-flex align-items-center p-0">
                            <h5 class="card-title flex-fill p-4 text-center fs-3"
                                style="background-color: rgba(0, 0, 0, 0.7)">
                                {{ $category->name }}</h5>

                        </div>
                    </a>
                </div>
            </div>
        @endforeach
    </div>
@endsection
