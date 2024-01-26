@extends('frontend.layout.app')
@section('content')
    @include('frontend.layout.components.jumbotron')
    <div class="row mb-2">
        <div class="col-md-6">
            <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                <div class="col p-4 d-flex flex-column position-static">
                    <strong class="d-inline-block mb-2 text-primary-emphasis">World</strong>
                    <h3 class="mb-0">Featured post</h3>
                    <div class="mb-1 text-body-secondary">Nov 12</div>
                    <p class="card-text mb-auto">This is a wider card with supporting text below as a natural lead-in to
                        additional content.</p>
                    <a href="#" class="icon-link gap-1 icon-link-hover stretched-link">
                        Continue reading
                        <svg class="bi">
                            <use xlink:href="#chevron-right"></use>
                        </svg>
                    </a>
                </div>
                <div class="col-auto d-none d-lg-block">
                    <svg class="bd-placeholder-img" width="200" height="250" xmlns="http://www.w3.org/2000/svg"
                        role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice"
                        focusable="false">
                        <title>Placeholder</title>
                        <rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef"
                            dy=".3em">Thumbnail</text>
                    </svg>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                <div class="col p-4 d-flex flex-column position-static">
                    <strong class="d-inline-block mb-2 text-success-emphasis">Design</strong>
                    <h3 class="mb-0">Post title</h3>
                    <div class="mb-1 text-body-secondary">Nov 11</div>
                    <p class="mb-auto">This is a wider card with supporting text below as a natural lead-in to additional
                        content.</p>
                    <a href="#" class="icon-link gap-1 icon-link-hover stretched-link">
                        Continue reading
                        <svg class="bi">
                            <use xlink:href="#chevron-right"></use>
                        </svg>
                    </a>
                </div>
                <div class="col-auto d-none d-lg-block">
                    <svg class="bd-placeholder-img" width="200" height="250" xmlns="http://www.w3.org/2000/svg"
                        role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice"
                        focusable="false">
                        <title>Placeholder</title>
                        <rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef"
                            dy=".3em">Thumbnail</text>
                    </svg>
                </div>
            </div>
        </div>
    </div>

    <div class="container px-4 py-5" id="hanging-icons">
        <h2 class="pb-2 border-bottom">Hanging icons</h2>
        <div class="row g-4 py-5 row-cols-1 row-cols-lg-3">
            <div class="col d-flex align-items-start">
                <div
                    class="icon-square text-body-emphasis bg-body-secondary d-inline-flex align-items-center justify-content-center fs-4 flex-shrink-0 me-3">
                    <svg class="bi" width="1em" height="1em">
                        <use xlink:href="#toggles2"></use>
                    </svg>
                </div>
                <div>
                    <h3 class="fs-2 text-body-emphasis">Featured title</h3>
                    <p>Paragraph of text beneath the heading to explain the heading. We'll add onto it with another sentence
                        and probably just keep going until we run out of words.</p>
                    <a href="#" class="btn btn-primary">
                        Primary button
                    </a>
                </div>
            </div>
            <div class="col d-flex align-items-start">
                <div
                    class="icon-square text-body-emphasis bg-body-secondary d-inline-flex align-items-center justify-content-center fs-4 flex-shrink-0 me-3">
                    <svg class="bi" width="1em" height="1em">
                        <use xlink:href="#cpu-fill"></use>
                    </svg>
                </div>
                <div>
                    <h3 class="fs-2 text-body-emphasis">Featured title</h3>
                    <p>Paragraph of text beneath the heading to explain the heading. We'll add onto it with another sentence
                        and probably just keep going until we run out of words.</p>
                    <a href="#" class="btn btn-primary">
                        Primary button
                    </a>
                </div>
            </div>
            <div class="col d-flex align-items-start">
                <div
                    class="icon-square text-body-emphasis bg-body-secondary d-inline-flex align-items-center justify-content-center fs-4 flex-shrink-0 me-3">
                    <svg class="bi" width="1em" height="1em">
                        <use xlink:href="#tools"></use>
                    </svg>
                </div>
                <div>
                    <h3 class="fs-2 text-body-emphasis">Featured title</h3>
                    <p>Paragraph of text beneath the heading to explain the heading. We'll add onto it with another sentence
                        and probably just keep going until we run out of words.</p>
                    <a href="#" class="btn btn-primary">
                        Primary button
                    </a>
                </div>
            </div>
        </div>
    </div>
@endsection
