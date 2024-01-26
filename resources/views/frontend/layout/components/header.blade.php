<nav class="navbar navbar-expand-lg">
    <div class="container py-3">
        <a class="navbar-brand fw-bold me-5 fs-3" href="/">{{ $brand }}</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item px-3">
                    <a class="nav-link {{ $page[0] === 'home' ? 'active' : '' }}" href="/">Home</a>
                </li>
                <li class="nav-item px-3">
                    <a class="nav-link {{ $page[0] === 'about' ? 'active' : '' }}" href="/about">About</a>
                </li>
                <li class="nav-item px-3">
                    <a class="nav-link {{ $page[0] === 'posts' ? 'active' : '' }}" href="/posts">Posts</a>
                </li>
                <li class="nav-item px-3">
                    <a class="nav-link {{ $page[0] === 'categories' ? 'active' : '' }}" href="/categories">Category</a>
                </li>
            </ul>
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                @auth
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            {{ auth()->user()->username }}
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">Profil</a></li>
                            <li><a class="dropdown-item" href="/dashboard">Dashboard</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="/logout">Logout</a></li>
                        </ul>
                    </li>
                @else
                    <li class="nav-item">
                        <a href="/login" class="btn btn-primary">Login</a>
                    </li>
                @endauth
            </ul>
            {{-- <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form> --}}
        </div>
    </div>
</nav>
{{-- @dd(auth()->user()) --}}
