@extends('master')

@section('title', 'Home')

{{-- @section('judul_halaman', 'Mozarella Malang') --}}

@section('konten')

<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <title>Mozarella Malang</title>
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!--enable mobile device-->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <!--fontawesome css-->
      <link rel="stylesheet" href="{{ asset('css/font-awesome.min.css') }}">
      <!--bootstrap css-->
      <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}">
      <!--animate css-->
      <link rel="stylesheet" href="{{ asset('css/animate-wow.css') }}">
      <!--main css-->
      <link rel="stylesheet" href="{{ asset('css/style.css') }}">
      <link rel="stylesheet" href="{{ asset('css/bootstrap-select.min.css') }}">
      <link rel="stylesheet" href="{{ asset('css/slick.min.css') }}">
      <!--responsive css-->
      <link rel="stylesheet" href="{{ asset('css/responsive.css') }}">
   </head>
   <body>


    <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
        <div class="container">
            <a class="navbar-brand" href="{{ url('/mozarella') }}">
                Mozarella
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <!-- Left Side Of Navbar -->
                <ul class="navbar-nav mr-auto">

                </ul>

                <!-- Right Side Of Navbar -->
                <ul class="navbar-nav ml-auto">
                    <!-- Authentication Links -->
                    @guest
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                        </li>
                        @if (Route::has('register'))
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                            </li>
                        @endif
                    @else
                        <li class="nav-item dropdown">
                            <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                {{ Auth::user()->name }} <span class="caret"></span>
                            </a>

                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="{{ route('logout') }}"
                                   onclick="event.preventDefault();
                                                 document.getElementById('logout-form').submit();">
                                    {{ __('Logout') }}
                                </a>
                                <a class="dropdown-item" href="/mozarella">
                                 Mozarella
                             </a>

                                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                    @csrf
                                </form>
                            </div>
                        </li>
                    @endguest
                </ul>
            </div>
        </div>
    </nav>



      <div class="page-content-product">
         <div class="main-product">
            <div class="container">
               <div class="row clearfix">
                  <div class="find-box">
                     <h1>Mozarella Khas Malang<br>Special Oleh-Oleh</h1>
                     <h4>Lembut di setiap gigitan.</h4>
                     <div class="product-sh">
                  </div>
               </div>
            </div>
         </div>
      </div>
      <div class="cat-main-box">
         <div class="container">
            <div class="row panel-row">
               <div class="col-md-4 col-sm-6 wow fadeIn" data-wow-delay="0.0s">
                  <div class="panel panel-default">
                     <div class="panel-body">
                        <img src="images/2.png" class="icon-small" alt="">
                        <h4>Finest Cheese in Town </h4>
                     </div>
                  </div>
               </div>
               <div class="col-md-4 col-sm-6 wow fadeIn" data-wow-delay="0.2s">
                  <div class="panel panel-default">
                     <div class="panel-body">
                        <img src="images/1.png" class="icon-small" alt="">
                        <h4>100% Original Product</h4>
                     </div>
                  </div>
               </div>
               <div class="col-md-4 col-sm-6 wow fadeIn hidden-sm" data-wow-delay="0.4s">
                  <div class="panel panel-default">
                     <div class="panel-body">
                        <img src="images/3.png" class="icon-small" alt="">
                        <h4>Feel The Happiness of The Tasty Cheese.</h4>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <div class="products_exciting_box">
         <div class="container">
            <div class="row">
               <div class="col-md-6 col-sm-6 wow fadeIn" data-wow-delay="0.2s">
                  <div class="exciting_box f_pd">
                     <img src="images/4.png" class="icon-small" alt="" />
                     <h4>Mozarella <strong>Cake</strong>
                     </h4>
                     <p>Our menu focuses on creative comfort food dishes accompanied
							by an ambiance which evokes a laid-back fun dining experience.
							We’re supported by a staff who shares our love for food and is here to serve our
							customers and make their experience enjoyable and fun. A reputation built on quality
							ingredients, house-made culinary details,
							and warm and welcoming service promises your inner foodie will find something to love.
                     </p>
                  </div>
               </div>
               <div class="col-md-6 col-sm-6 wow fadeIn" data-wow-delay="0.4s">
                  <div class="exciting_box l_pd">
                     <img src="images/5.png" class="icon-small" alt="" />
                     <h4><strong>Mozarella</strong> Cake</h4>
                     <p>Our marketplace boasts a
						   broad selection of artisanal cheeses carefully selected for exceptional taste,
						   authenticity, and remarkable quality.Presenting you with a variety of delicious mozarella selections.
							Our products doesn't have pork and alcohol. 100% original products.
                     </p>
                  </div>
               </div>
            </div>
         </div>
      </div>

      <div class="products">
         <div class="main-products">
            <h2>Catalog Mozarella Malang</h2>
            <div class="product-slidr">
               <div class="slider">


                    @foreach($mozarella as $moz)
                    <div>
                     <div class="prod-box">
                        <div class="prod-i">
                        <img src="images/{{ $moz->gambarnya }}" alt="#" />
                        </div>
                        <div class="prod-dit clearfix">
                           <div class="dit-t clearfix">
                              <div class="left-ti">
                              <h4>{{ $moz->nama }}</h4>
                              <p><span>{{ $moz->jenis }}</span></p>
                              <h5><b>Status : {{ $moz->status }}</b></h5>
                              </div>
                            <a href="#">Rp. {{ $moz->harga }}</a>
                           </div>
                           <div class="dit-btn clearfix">
                              <a class="wis" href="#"><i class="fa fa-star" aria-hidden="true"></i> Save to wishlist </a>
                              <a class="thi" href="#"><i class="fa fa-thumbs-up" aria-hidden="true"></i> Like this</a>
                           </div>
                        </div>
                     </div>
                  </div>
                  @endforeach


                </div>
            </div>
        </div>
    </div>



      <footer>
         <div class="main-footer">
            <div class="container">
               <div class="row">
                  <div class="footer-top clearfix">
                     <div class="col-md-2 col-sm-6">
                        <h2>Start a free
                           account today
                        </h2>
                     </div>
                     <div class="col-md-6 col-sm-6">
                        <div class="form-box">
                           <input type="text" placeholder="Enter yopur e-mail" />
                           <button>Continue</button>
                        </div>
                     </div>
                     <div class="col-md-4 col-sm-12">
                        <div class="help-box-f">
                           <!-- <h4>Question? Call us on 12 34 56 78 for help</h4> -->
                           <h4>Contact Information
                           <ul class="fh5co-footer-links">
                           <li>State Polytechnic of Malang, <br> Jl. Soekarno Hatta No.9</li>
                           <li><a href="tel://1234567920">+ 1235 2355 98</a></li>
                           <li><a href="http://lms.jti.polinema.ac.id/">LMS JTI</a></li></h4>
                        </div>
                     </div>
                  </div>
                  <div class="footer-link-box clearfix">
                     <div class="col-md-6 col-sm-6">
                        <div class="left-f-box">
                           <div class="col-sm-4">
                              <h2>SELL ON Mozarella Cake</h2>
                              <ul>
                                 <li><a href="#">Create account</a></li>
                                 <li><a href="#">About Us</a></li>
                                 <!-- <li><a href="pricing.html">Pricing</a></li> -->
                                 <li><a href="#menu">Menu</a></li>
                              </ul>
                           </div>
                        </div>
                     </div>
                     {{-- <div class="col-md-6 col-sm-6">
                        <div class="left-f-box">
                           <div class="col-sm-4">
                             <h2>COMPANY</h2>
                              <ul>
                                 <li><a href="about-us.html">About us</a></li>
                                 <li><a href="#">Contact us</a></li>
                                 <li><a href="#">Careers</a></li>
                              </ul>
                           </div>
                        </div>
                     </div> --}}
                     <div class="col-md-6 col-sm-6">
                     <div class="left-f-box">
                           <div class="fh5co-footer-links">
                           <h2>Opening Hours</h2>
                           <ul >
                           <style>
                              p {
                              color: white;background-position-x: 
                              font-size: 14px;
                              }
                              span {
                              color: white;
                              font-size: 12px;
                              }
                           </style>
                              <li>
                                 <p><strong>Monday - Thursday </strong></p>
                                 <span> 11:00 AM - 9:00 PM</span>
                              </li>
                              <li>
                                 <p><strong>Friday - Saturday </strong?></p>
                                 <span>  11:00 AM - 5:00 PM</span>
                              </li>
                           </ul>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>



      </footer>
      <script src="{{ asset('js/jquery-1.12.4.min.js') }}"></script>
      <!--bootstrap js-->
      <script src="{{ asset('js/bootstrap.min.js') }}"></script>
      <script src="{{ asset('js/bootstrap-select.min.js') }}"></script>
      <script src="{{ asset('js/slick.min.js') }}"></script>
      <script src="{{ asset('js/wow.min.js') }}"></script>
      <!--custom js-->
      <script src="{{ asset('js/custom.js') }}"></script>

   </body>
</html>




{{--
<a href="/mozarella/tambah"  class="btn btn-primary">Mozarella</a>
    <br>
    <br>
    <table class="table table-bordered table-hover table-striped">
        <thead>
            <tr align="center">
                <th>Nama Mozarella</th>
                <th>Harga</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            @foreach($mozarella as $moz)
            <tr>
                <td>{{ $moz->nama }}</td>
                <td align="center">{{ $moz->harga }}</td>
                <td>
                    <a href="/mahasiswa/detail/{{ $moz->id }}" class="badge badge-info">Detail</a>
                    <a href="/mahasiswa/edit/{{ $moz->id }}" class="badge badge-warning">Edit</a>
                    <a href="/mahasiswa/hapus/{{ $moz->id }}" class="badge badge-danger">Hapus</a>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
@endsection --}}
