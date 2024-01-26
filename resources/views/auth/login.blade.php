@extends('auth.layout.app')
@section('content')
    <div class="col-lg-7 text-center text-lg-start">
        <h1 class="display-4 fw-bold lh-1 text-body-emphasis mb-3">Vertically centered hero sign-up form</h1>
        <p class="col-lg-10 fs-4">Below is an example form built entirely with Bootstrap’s form controls. Each
            required form group has a validation state that can be triggered by attempting to submit the form
            without completing it.</p>
    </div>
    <div class="col-md-10 mx-auto col-lg-5">
        @if (session()->has('success'))
            <div class="alert alert-primary alert-dismissible fade show" role="alert">
                {{ session('success') }}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        @endif
        @if (session()->has('loginErr'))
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                {{ session('loginErr') }}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        @endif
        <form action="/login" method="POST" class="p-4 p-md-5 border rounded-3 bg-body-tertiary needs-validation">
            @csrf

            <div class="form-floating has-validation mb-3">
                <input type="email" name="email" class="form-control @error('email') is-invalid @enderror"
                    id="floatingInput" placeholder="name@example.com" autofocus required value="{{ old('email') }}">
                <label for="floatingInput">Email</label>
                @error('email')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
            </div>
            <div class="form-floating has-validation mb-3">
                <input type="password" name="password" class="form-control @error('password') is-invalid @enderror"
                    id="floatingPassword" placeholder="Password" required>
                <label for="floatingPassword">Password</label>
                @error('password')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
            </div>
            <button class="w-100 btn btn-lg btn-primary" type="submit">Login</button>
            <small class="text-body-secondary">By clicking login, you agree to the terms of use.</small>
            <hr class="my-4">
            <p class="text-center">don't have account? sign up <a href="/register">here</a></p>
        </form>
    </div>
@endsection
