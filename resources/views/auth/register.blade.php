@extends('auth.layout.app')
@section('content')
    <div class="col-lg-7 text-center text-lg-start">
        <h1 class="display-4 fw-bold lh-1 text-body-emphasis mb-3">Vertically centered hero sign-up form</h1>
        <p class="col-lg-10 fs-4">Below is an example form built entirely with Bootstrap’s form controls. Each
            required form group has a validation state that can be triggered by attempting to submit the form
            without completing it.</p>
    </div>
    <div class="col-md-10 mx-auto col-lg-5">

        <form action="/register" method="post" class="p-4 p-md-5 border rounded-3 bg-body-tertiary needs-validation">
            @csrf

            <div class="input-group has-validation mb-3">
                <div class="form-floating">
                    <input type="text" name="name" class="form-control @error('name') is-invalid @enderror"
                        id="name" placeholder="name" required value="{{ old('name') }}">
                    <label for="name">Name</label>
                    @error('name')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
                </div>

            </div>

            <div class="input-group has-validation mb-3">
                <div class="form-floating">
                    <input type="text" name="username" class="form-control @error('username') is-invalid @enderror"
                        id="username" placeholder="username" required value="{{ old('username') }}">
                    <label for="username">Username</label>
                    @error('username')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
                </div>

            </div>

            <div class="input-group has-validation mb-3">
                <div class="form-floating">
                    <input type="email" name="email" class="form-control @error('email') is-invalid @enderror"
                        id="email" placeholder="email" required value="{{ old('email') }}">
                    <label for="email">Email</label>
                    @error('email')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
                </div>

            </div>

            <div class="input-group has-validation mb-3">
                <div class="form-floating">
                    <input type="password" name="password" class="form-control @error('password') is-invalid @enderror"
                        id="password" placeholder="password" required>
                    <label for="password">password</label>
                    @error('password')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
                </div>

            </div>


            <button class="btn btn-primary w-100 py-2" type="submit">Register</button>
            <small class="text-body-secondary">By clicking register, you agree to the terms of use.</small>
            <hr class="my-4">
            <p class="text-center">Already have account? Login <a href="/login">here</a></p>
        </form>
    </div>
@endsection
