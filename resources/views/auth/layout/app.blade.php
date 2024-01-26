<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{{ $title }}</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="/assets/css/frontend/style.css">

    <style>
        * {
            padding: 0;
            margin: 0;
        }

        html,
        body {
            margin: 0;
            padding: 0;
            min-width: 100%;
            height: 100%
        }
    </style>
</head>

<body>
    <div class="d-flex justify-content-end pt-5 pe-5 position-absolute ps-auto w-100">
        <a href="/" class="btn btn-outline-primary"><i class="bi bi-house-fill"></i></a>

    </div>
    <div class="container col-xl-10 col-xxl-8 px-4 py-5 py-auto h-100">
        <div class="row align-items-center g-lg-5 py-5 h-100">


            @yield('content')

        </div>
    </div>



    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous">
    </script>

</body>

</html>
