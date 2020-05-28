<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title> @yield('title') </title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">


    </head>
<body>
    <div class="container">
        <div class="row mt-3">
            <div class="col md-50">
                <div class="card">
                    <h2 class="card-header text-center">
                        @yield('judul_halaman')</h2>
                    </div>
                    <div class="card-body">
                        @yield('konten')
                    </div>
                    <div class="card">
            </div>
        </div>
    </div>
</body>
</html>
