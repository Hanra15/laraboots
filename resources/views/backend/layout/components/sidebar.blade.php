<style>
    .sidebar .nav-link {
        margin-top: 5px;
        margin-bottom: 5px
    }

    .sidebar .nav-link.active {
        color: black;
        background: #cdcdcd;
        border-radius: 25px;
        font-weight: bold;
        margin-inline: 20px;
    }

    .sidebar .nav-link:hover {
        background: #cdcdcd;
        border-radius: 25px;
        margin-inline: 20px;
    }
</style>
<div class="sidebar border border-right col-md-3 col-lg-2 p-0 bg-body-tertiary">
    <div class="offcanvas-md offcanvas-end bg-body-tertiary" tabindex="-1" id="sidebarMenu"
        aria-labelledby="sidebarMenuLabel">
        <div class="offcanvas-header">
            <h5 class="offcanvas-title" id="sidebarMenuLabel">{{ $brand }}</h5>
            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" data-bs-target="#sidebarMenu"
                aria-label="Close"></button>
        </div>
        <div class="offcanvas-body d-md-flex flex-column p-0 pt-lg-3 overflow-y-auto">
            <ul class="nav flex-column">
                <li class="nav-item">
                    <a class="nav-link d-flex align-items-center gap-2 {{ Request::is('dashboard') ? 'active' : '' }}"
                        aria-current="page" href="/dashboard">
                        <svg class="bi">
                            <use xlink:href="#gear-wide-connected"></use>
                        </svg>

                        Dashboard
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link d-flex align-items-center gap-2 {{ Request::is('dashboard/posts*') ? 'active' : '' }}"
                        href="/dashboard/posts">
                        <svg class="bi">
                            <use xlink:href="#file-earmark"></use>
                        </svg>
                        Posts
                    </a>
                </li>


            </ul>


            @can('admin')
                <hr class="my-3">

                <ul class="nav flex-column mb-auto">
                    <li class="nav-item">
                        <a class="nav-link d-flex align-items-center gap-2 {{ Request::is('dashboard/categories*') ? 'active' : '' }}"
                            href="/dashboard/categories">
                            <svg class="bi">
                                <use xlink:href="#file-earmark"></use>
                            </svg>
                            Categories
                        </a>
                    </li>
                </ul>
            @endcan

            <hr class="my-3">

            <ul class="nav flex-column mb-auto">
                <li class="nav-item">
                    <a class="nav-link d-flex align-items-center gap-2" href="/">
                        <svg class="bi">
                            <use xlink:href="#house-fill"></use>
                        </svg>
                        Homepage
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link d-flex align-items-center gap-2" href="/logout">
                        <svg class="bi">
                            <use xlink:href="#door-closed"></use>
                        </svg>
                        Logout
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>
