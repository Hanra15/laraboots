@extends('backend.layout.app')
@section('content')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Create {{ $page }}</h1>
        <div class="nav">
            <a href="/dashboard/posts" class="btn btn-secondary m-2">Back</a>
        </div>
    </div>
    <div class="col-lg-8">
        <form action="/dashboard/posts" method="post" class="mb-5" enctype="multipart/form-data">
            @csrf
            <div class="mb-3">
                <label for="name" class="form-label">Category Name</label>
                <input type="text" name="name" class="form-control @error('name') is-invalid @enderror" id="name"
                    required value="{{ old('name') }}">
                @error('name')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
            </div>

            <div class="mb-3">
                <label for="image" class="form-label">Category Image</label>
                <img class="img-preview img-fluid mb-3 col-sm-5 rounded">
                <input class="form-control @error('image') is-invalid @enderror" name="image" type="file"
                    id="image" onchange="previewImage()">
                @error('image')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
            </div>


            <button type="submit" class="btn btn-primary">Submit</button>
        </form>

    </div>

    <script>
        function previewImage() {
            const image = document.querySelector('#image');
            const imagePreview = document.querySelector('.img-preview');

            imagePreview.style.display = 'block';

            const oFReader = new FileReader();
            oFReader.readAsDataURL(image.files[0]);

            oFReader.onload = function(oFREvent) {
                imagePreview.src = oFREvent.target.result;
            }

        }
    </script>
@endsection
