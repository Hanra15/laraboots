<nav aria-label="breadcrumb">
    <ol class="breadcrumb p-3 bg-body-tertiary rounded-3">
        <li class="breadcrumb-item">
            <a class="link-body-emphasis" href="#">
                <svg class="bi" width="16" height="16">
                    <use xlink:href="#house-door-fill"></use>
                </svg>
                <span class="visually-hidden">Home</span>
            </a>
        </li>
        <li class="breadcrumb-item">
            <a class="link-body-emphasis fw-semibold text-decoration-none" href="#">{{ $page[0] }}</a>
        </li>
        @if ($page[1] != null)
            <li class="breadcrumb-item active" aria-current="page">
                {{ $page[1] }}
            </li>
        @endif
    </ol>
</nav>
