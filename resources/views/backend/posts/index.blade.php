@extends('backend.layout.app')
@section('content')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">{{ $page }}</h1>

    </div>
    <a href="/dashboard/posts/create" class="btn btn-primary mb-3 px-5"><i class="bi bi-plus-circle"></i> Add</a>
    <div class="table-responsive small">
        @if (session()->has('success'))
            <div class="alert alert-success" role="alert">
                {{ session('success') }}
            </div>
        @endif
        <table class="table table-striped table-sm">
            <thead>
                <tr>
                    <th scope="col">No</th>
                    <th scope="col">Judul</th>
                    <th scope="col">Category</th>
                    @if (auth()->user()->is_admin == 1)
                        <th scope="col">Author</th>
                    @endif
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($posts as $post)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $post->title }}</td>
                        <td>{{ $post->category->name }}</td>
                        @if (auth()->user()->is_admin == 1)
                            <td>{{ $post->author->username }}</td>
                        @endif
                        <td>
                            <a href="/dashboard/posts/{{ $post->slug }}" class="btn btn-sm btn-info"><i
                                    class="bi bi-eye-fill"></i></a>
                            <a href="/dashboard/posts/{{ $post->slug }}/edit" class="btn btn-sm btn-warning"><i
                                    class="bi bi-pencil-square"></i></a>
                            <form action="/dashboard/posts/{{ $post->slug }}" method="post" class="d-inline">
                                @method('delete')
                                @csrf
                                <button type="submit" id="delete" class="btn btn-sm btn-danger"
                                    onclick="return confirm('Delete the data?')"><i class="bi bi-trash-fill"></i></button>
                            </form>
                        </td>
                    </tr>
                @endforeach

            </tbody>
        </table>
    </div>
    <script></script>
@endsection
