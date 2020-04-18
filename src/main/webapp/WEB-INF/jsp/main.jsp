<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="robots" content="noindex, nofollow">
    <title>Team design card flipper using bootstrap 4 - Bootsnipp.com</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <style type="text/css">
        /* FontAwesome for working BootSnippet :> */

        @import url('https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
        #team {
            background: #eee !important;
        }

        .btn-primary:hover,
        .btn-primary:focus {
            background-color: #108d6f;
            border-color: #108d6f;
            box-shadow: none;
            outline: none;
        }

        .btn-primary {
            color: #fff;
            background-color: #007b5e;
            border-color: #007b5e;
        }

        section {
            padding: 60px 0;
        }

        section .section-title {
            text-align: center;
            color: #007b5e;
            margin-bottom: 50px;
            text-transform: uppercase;
        }

        #team .card {
            border: none;
            background: #ffffff;
        }

        .image-flip:hover .backside,
        .image-flip.hover .backside {
            -webkit-transform: rotateY(0deg);
            -moz-transform: rotateY(0deg);
            -o-transform: rotateY(0deg);
            -ms-transform: rotateY(0deg);
            transform: rotateY(0deg);
            border-radius: .25rem;
        }

        .image-flip:hover .frontside,
        .image-flip.hover .frontside {
            -webkit-transform: rotateY(180deg);
            -moz-transform: rotateY(180deg);
            -o-transform: rotateY(180deg);
            transform: rotateY(180deg);
        }

        .mainflip {
            -webkit-transition: 1s;
            -webkit-transform-style: preserve-3d;
            -ms-transition: 1s;
            -moz-transition: 1s;
            -moz-transform: perspective(1000px);
            -moz-transform-style: preserve-3d;
            -ms-transform-style: preserve-3d;
            transition: 1s;
            transform-style: preserve-3d;
            position: relative;
        }

        .frontside {
            position: relative;
            -webkit-transform: rotateY(0deg);
            -ms-transform: rotateY(0deg);
            z-index: 2;
            margin-bottom: 30px;
        }

        .backside {
            position: absolute;
            top: 0;
            left: 0;
            background: white;
            -webkit-transform: rotateY(-180deg);
            -moz-transform: rotateY(-180deg);
            -o-transform: rotateY(-180deg);
            -ms-transform: rotateY(-180deg);
            transform: rotateY(-180deg);
            -webkit-box-shadow: 5px 7px 9px -4px rgb(158, 158, 158);
            -moz-box-shadow: 5px 7px 9px -4px rgb(158, 158, 158);
            box-shadow: 5px 7px 9px -4px rgb(158, 158, 158);
        }

        .frontside,
        .backside {
            -webkit-backface-visibility: hidden;
            -moz-backface-visibility: hidden;
            -ms-backface-visibility: hidden;
            backface-visibility: hidden;
            -webkit-transition: 1s;
            -webkit-transform-style: preserve-3d;
            -moz-transition: 1s;
            -moz-transform-style: preserve-3d;
            -o-transition: 1s;
            -o-transform-style: preserve-3d;
            -ms-transition: 1s;
            -ms-transform-style: preserve-3d;
            transition: 1s;
            transform-style: preserve-3d;
        }

        .frontside .card,
        .backside .card {
            min-height: 312px;
        }

        .backside .card a {
            font-size: 18px;
            color: #007b5e !important;
        }

        .frontside .card .card-title,
        .backside .card .card-title {
            color: #007b5e !important;
        }

        .frontside .card .card-body img {
            width: 120px;
            height: 120px;
            border-radius: 50%;
        }
    </style>
    <!--script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script-->
    <!--script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script-->
    <!--have Ajx work -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">


    <!-- needed for the collapsable table -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
    <!-- Ajax end -->

    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="css/styleIndex.css">

    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
    <!--have Ajx work -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>


    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
</head>
<body>
<!-- Sidebar  -->
<!-- Team -->
<nav class="navbar navbar-expand-lg navbar-light text-dark">
    <div class="container-fluid">
        <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        </button>
        <a href="main" type="button" id="d" class="btn">
            <img src="css/js/car3.jpg" alt="Italian Trulli" height="100" width="150">
        </a>
        <a href="main" type="button" id="h" class="btn">
        </a>
        <div class="col-xs-1 center-block">
        <h1>WOLVERINE DEALERSHIP</h1>
        </div>
        <br/>
        <a href="login" type="button" id="Home" class="btn ummaize">
            <i class="fas fa-align-left"></i>
            <h6>Sign In</h6>
        </a>
    </div>
</nav>
<div class="wrapper">
<nav id="sidebar">
    <div class="sidebar-header">
        <h3>Search Filters</h3>
    </div>
    <ul class="list-unstyled components">
        <!--p>Dummy Heading</p-->
        <li>
            <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Vehicle condition</a>
            <ul class="collapse list-unstyled" id="homeSubmenu">
                <select id="condition" class="homeSubmenu2 form-control">
                    <option>New</option>
                    <option>Used</option>
                </select>
            </ul>
        </li>
        <li>
            <a href="#homeSubmenu4" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Price</a>
            <ul class="collapse list-unstyled" id="homeSubmenu4">
                <li>
                    <div class="form-group">
                        <br>
                        <input type="text" class="homeSubmenu1" id="minPrice" placeholder="Min">
                        <input type="text" class="homeSubmenu1" id="maxPrice" placeholder="Max">

                    </div>
                </li>
            </ul>
        </li>
        <li>
            <a href="#pageSubmenu1" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Year</a>
            <ul class="collapse list-unstyled" id="pageSubmenu1">
                <li>
                <div class="form-group">
                    <br>
                    <input type="text" class="homeSubmenu3" id="minYear" placeholder="Min">
                    <input type="text" class="homeSubmenu3" id="maxYear" placeholder="Max">
                </div>
                </li>
            </ul>
        </li>
        <li>
            <a href="#pageSubmenu3" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Make</a>
            <ul class="collapse list-unstyled" id="pageSubmenu3">
                <select id="make" class="pageSubmenu3 form-control">
                    <option>BUICK</option>
                    <option>GMC</option>
                    <option>Cadillac</option>
                    <option>Chevrolet</option>
                </select>
            </ul>
        </li>
        <li>
            <a href="#pageSubmenu4" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Color</a>
            <ul class="collapse list-unstyled" id="pageSubmenu4">
                <select id="color" class="pageSubmenu3 form-control">
                    <option>Black</option>
                    <option>White</option>
                    <option>Blue</option>
                    <option>Green</option>
                </select>
            </ul>
        </li>
        <li>
            <a href="#pageSubmenu5"  id="pageSubmenu51"  data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Model</a>

            <ul class="collapse list-unstyled" id="pageSubmenu5">

                <select id="model" class="pageSubmenu3 form-control">
                    <option>Sedan</option>
                    <option>SUV</option>
                    <option>Coupe</option>
                    <option>Convertible</option>
                </select>
            </ul>
        </li>
        <li>
            <a href="#pageSubmenu6" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Mileage</a>
            <ul class="collapse list-unstyled" id="pageSubmenu6">
                <li>
                    <div class="form-group">
                        <br>
                        <input type="text" class="homeSubmenu6" id="minMilleage" placeholder="Min">
                        <input type="text" class="homeSubmenu6" id="maxMilleage" placeholder="Max">
                    </div>
                </li>
            </ul>
        </li>
        <a href="#" type="button"  class="search btn btn-lg btn-block ummaize">Search</a>
    </ul>
    <ul class="list-unstyled components">
    <li>
        <a href="#pageSubmenu7" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Load new vehicle</a>
        <ul class="collapse list-unstyled" id="pageSubmenu7">
            <li>
                <a type="button"  class="homeSubmenu7" class="btn btn-info" type="submit" data-toggle="modal" id="100" data-target="#basicModal">New Vehicle</a>
            </li>
        </ul>
    </li>
    </ul>
</nav>
    <div id="content">
    <section id="team" class="pb-5">
        <div class="container">
            <h5 class="section-title h1">OUR INVENTORY</h5>
            <div class="row" id="result">
                <!-- Team member -->
                <!--div class="col-xs-12 col-sm-6 col-md-4">
                    <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                        <div class="mainflip">
                            <div class="frontside">
                                <div class="card">
                                    <div class="card-body text-center">
                                        <p><img class=" img-fluid" src="https://sunlimetech.com/portfolio/boot4menu/assets/imgs/team/img_01.png" alt="card image"></p>
                                        <h4 class="card-title">Sunlimetech</h4>
                                        <p class="card-text">This is basic card with image on top, title, description and button.</p>
                                        <a href="#" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="backside">
                                <div class="card">
                                    <div class="card-body text-center mt-4">
                                        <h4 class="card-title">Sunlimetech</h4>
                                        <p class="card-text">This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.</p>
                                        <ul class="list-inline">
                                            <li class="list-inline-item">
                                                <a class="social-icon text-xs-center" target="_blank" href="#">
                                                    <i class="fa fa-facebook"></i>
                                                </a>
                                            </li>
                                            <li class="list-inline-item">
                                                <a class="social-icon text-xs-center" target="_blank" href="#">
                                                    <i class="fa fa-twitter"></i>
                                                </a>
                                            </li>
                                            <li class="list-inline-item">
                                                <a class="social-icon text-xs-center" target="_blank" href="#">
                                                    <i class="fa fa-skype"></i>
                                                </a>
                                            </li>
                                            <li class="list-inline-item">
                                                <a class="social-icon text-xs-center" target="_blank" href="#">
                                                    <i class="fa fa-google"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div-->
                <!-- ./Team member -->
                <!-- Team member -->
                <!--div class="col-xs-12 col-sm-6 col-md-4">
                    <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                        <div class="mainflip">
                            <div class="frontside">
                                <div class="card">
                                    <div class="card-body text-center">
                                        <p><img class=" img-fluid" src="https://sunlimetech.com/portfolio/boot4menu/assets/imgs/team/img_02.png" alt="card image"></p>
                                        <h4 class="card-title">Sunlimetech</h4>
                                        <p class="card-text">This is basic card with image on top, title, description and button.</p>
                                        <a href="#" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="backside">
                                <div class="card">
                                    <div class="card-body text-center mt-4">
                                        <h4 class="card-title">Sunlimetech</h4>
                                        <p class="card-text">This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.</p>
                                        <ul class="list-inline">
                                            <li class="list-inline-item">
                                                <a class="social-icon text-xs-center" target="_blank" href="#">
                                                    <i class="fa fa-facebook"></i>
                                                </a>
                                            </li>
                                            <li class="list-inline-item">
                                                <a class="social-icon text-xs-center" target="_blank" href="#">
                                                    <i class="fa fa-twitter"></i>
                                                </a>
                                            </li>
                                            <li class="list-inline-item">
                                                <a class="social-icon text-xs-center" target="_blank" href="#">
                                                    <i class="fa fa-skype"></i>
                                                </a>
                                            </li>
                                            <li class="list-inline-item">
                                                <a class="social-icon text-xs-center" target="_blank" href="#">
                                                    <i class="fa fa-google"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div-->
                <!-- ./Team member -->
                <!-- Team member -->
                <!--div class="col-xs-12 col-sm-6 col-md-4">
                    <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                        <div class="mainflip">
                            <div class="frontside">
                                <div class="card">
                                    <div class="card-body text-center">
                                        <p><img class=" img-fluid" src="https://sunlimetech.com/portfolio/boot4menu/assets/imgs/team/img_03.png" alt="card image"></p>
                                        <h4 class="card-title">Sunlimetech</h4>
                                        <p class="card-text">This is basic card with image on top, title, description and button.</p>
                                        <a href="#" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="backside">
                                <div class="card">
                                    <div class="card-body text-center mt-4">
                                        <h4 class="card-title">Sunlimetech</h4>
                                        <p class="card-text">This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.</p>
                                        <ul class="list-inline">
                                            <li class="list-inline-item">
                                                <a class="social-icon text-xs-center" target="_blank" href="#">
                                                    <i class="fa fa-facebook"></i>
                                                </a>
                                            </li>
                                            <li class="list-inline-item">
                                                <a class="social-icon text-xs-center" target="_blank" href="#">
                                                    <i class="fa fa-twitter"></i>
                                                </a>
                                            </li>
                                            <li class="list-inline-item">
                                                <a class="social-icon text-xs-center" target="_blank" href="#">
                                                    <i class="fa fa-skype"></i>
                                                </a>
                                            </li>
                                            <li class="list-inline-item">
                                                <a class="social-icon text-xs-center" target="_blank" href="#">
                                                    <i class="fa fa-google"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div-->
                <!-- ./Team member -->
                <!-- Team member -->
                <!--div class="col-xs-12 col-sm-6 col-md-4">
                    <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                        <div class="mainflip">
                            <div class="frontside">
                                <div class="card">
                                    <div class="card-body text-center">
                                        <p><img class=" img-fluid" src="https://sunlimetech.com/portfolio/boot4menu/assets/imgs/team/img_04.jpg" alt="card image"></p>
                                        <h4 class="card-title">Sunlimetech</h4>
                                        <p class="card-text">This is basic card with image on top, title, description and button.</p>
                                        <a href="#" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="backside">
                                <div class="card">
                                    <div class="card-body text-center mt-4">
                                        <h4 class="card-title">Sunlimetech</h4>
                                        <p class="card-text">This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.</p>
                                        <ul class="list-inline">
                                            <li class="list-inline-item">
                                                <a class="social-icon text-xs-center" target="_blank" href="#">
                                                    <i class="fa fa-facebook"></i>
                                                </a>
                                            </li>
                                            <li class="list-inline-item">
                                                <a class="social-icon text-xs-center" target="_blank" href="#">
                                                    <i class="fa fa-twitter"></i>
                                                </a>
                                            </li>
                                            <li class="list-inline-item">
                                                <a class="social-icon text-xs-center" target="_blank" href="#">
                                                    <i class="fa fa-skype"></i>
                                                </a>
                                            </li>
                                            <li class="list-inline-item">
                                                <a class="social-icon text-xs-center" target="_blank" href="#">
                                                    <i class="fa fa-google"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div-->
                <!-- ./Team member -->
                <!-- Team member -->
                <!--div class="col-xs-12 col-sm-6 col-md-4">
                    <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                        <div class="mainflip">
                            <div class="frontside">
                                <div class="card">
                                    <div class="card-body text-center">
                                        <p><img class=" img-fluid" src="https://sunlimetech.com/portfolio/boot4menu/assets/imgs/team/img_05.png" alt="card image"></p>
                                        <h4 class="card-title">Sunlimetech</h4>
                                        <p class="card-text">This is basic card with image on top, title, description and button.</p>
                                        <a href="#" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="backside">
                                <div class="card">
                                    <div class="card-body text-center mt-4">
                                        <h4 class="card-title">Sunlimetech</h4>
                                        <p class="card-text">This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.</p>
                                        <ul class="list-inline">
                                            <li class="list-inline-item">
                                                <a class="social-icon text-xs-center" target="_blank" href="#">
                                                    <i class="fa fa-facebook"></i>
                                                </a>
                                            </li>
                                            <li class="list-inline-item">
                                                <a class="social-icon text-xs-center" target="_blank" href="#">
                                                    <i class="fa fa-twitter"></i>
                                                </a>
                                            </li>
                                            <li class="list-inline-item">
                                                <a class="social-icon text-xs-center" target="_blank" href="#">
                                                    <i class="fa fa-skype"></i>
                                                </a>
                                            </li>
                                            <li class="list-inline-item">
                                                <a class="social-icon text-xs-center" target="_blank" href="#">
                                                    <i class="fa fa-google"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div-->
                <!-- ./Team member -->
                <!-- Team member -->
                <!--div class="col-xs-12 col-sm-6 col-md-4">
                    <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                        <div class="mainflip">
                            <div class="frontside">
                                <div class="card">
                                    <div class="card-body text-center">
                                        <p><img class=" img-fluid" src="https://sunlimetech.com/portfolio/boot4menu/assets/imgs/team/img_06.jpg" alt="card image"></p>
                                        <h4 class="card-title">Sunlimetech</h4>
                                        <p class="card-text">This is basic card with image on top, title, description and button.</p>
                                        <a href="#" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="backside">
                                <div class="card">
                                    <div class="card-body text-center mt-4">
                                        <h4 class="card-title">Sunlimetech</h4>
                                        <p class="card-text">This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.</p>
                                        <ul class="list-inline">
                                            <li class="list-inline-item">
                                                <a class="social-icon text-xs-center" target="_blank" href="#">
                                                    <i class="fa fa-facebook"></i>
                                                </a>
                                            </li>
                                            <li class="list-inline-item">
                                                <a class="social-icon text-xs-center" target="_blank" href="#">
                                                    <i class="fa fa-twitter"></i>
                                                </a>
                                            </li>
                                            <li class="list-inline-item">
                                                <a class="social-icon text-xs-center" target="_blank" href="#">
                                                    <i class="fa fa-skype"></i>
                                                </a>
                                            </li>
                                            <li class="list-inline-item">
                                                <a class="social-icon text-xs-center" target="_blank" href="#">
                                                    <i class="fa fa-google"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div-->
            </div>
        </div>
    </section>
    <!-- Team -->	<script type="text/javascript">
    //No Js required	</script>
</div>
</div>
</body>
<!-- START OF THE pop up pages-->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>A Bootstrap form with input file and PHP upload script</title>
<meta name="robots" content="noindex,follow">
<link rel="stylesheet" href="style-2.css">
<script async="" src="//www.google-analytics.com/analytics.js"></script><script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" integrity="sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ==" crossorigin="anonymous"></script>
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap-filestyle.min.js"> </script>
<style>
    .inputstl {
        padding: 10px;
        border: solid 1px #173955;
        outline: 0;
        background: -webkit-gradient(linear, left top, left 25, from(#FFFFFF), color-stop(4%, #AACCE8), to(#FFFFFF));
        background: -moz-linear-gradient(top, #FFFFFF, #AACCE8 1px, #FFFFFF 25px);
        box-shadow: rgba(0,0,0, 0.1) 0px 0px 8px;
        -moz-box-shadow: rgba(0,0,0, 0.1) 0px 0px 8px;
        -webkit-box-shadow: rgba(0,0,0, 0.1) 0px 0px 8px;

    }
    .modal-content-2 {
        position: relative;
        display: -ms-flexbox;
        display: flex;
        -ms-flex-direction: column;
        flex-direction: column;
        width: 180%;
        pointer-events: auto;
        background-color: #fff;
        background-clip: padding-box;
        border: 1px solid rgba(0,0,0,.2);
        border-radius: .3rem;
        outline: 0;
    }

</style>
<div class="modal fade" id="basicModal" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content-2">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">Enter vehicle Information </h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">X</span>
                </button>
            </div>
            <div class="modal-body">
<td class="indtd" >
    <div class="container">
        <div class="row" style="margin-top:60px;margin-left:90px;">
            <div class="col-md-2 W-100">
            </div>
            <div class="col-md-10 W-100">
                <form class="form-horizontal" role="form" enctype="multipart/form-data">

                    <div class="form-group">
                        <div class="mylable"><label for="model" class="col-sm-5 control-label">Vehicle Id:</label></div>
                        <div class="col-sm-5 keywords">
                            <input type="text" class="form-control inputstl" id="id" placeholder="44">
                        </div>
                    </div>

                    <div class="form-group">
                        <div id="feedback" class="bg-success text-center"></div>
                        <label for="make" class="col-sm-5 control-label">MAKE:</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control inputstl" id="make" placeholder="Enter vehicle Maker">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="model" class="col-sm-5 control-label">MODEL:</label>
                        <div class="col-sm-5">
                            <select class="form-control inputstl" id="model">
                                <option>GMC</option>
                                <option>Chevrolet</option>
                                <option>Buick</option>
                                <option>cadillac</option>
                            </select>

                        </div>
                    </div>
                    <div class="form-group">
                        <label for="status" class="col-sm-5 control-label">New OR Used:</label>
                        <div class="col-sm-5">
                            <select class="form-control inputstl" id="status">
                                <option>New</option>
                                <option>Used</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="year" class="col-sm-5 control-label">YEAR:</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control inputstl" id="year" placeholder="Enter vehicle year">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="odo" class="col-sm-5 control-label">Millage:</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control inputstl" id="odo" placeholder="Enter vehicle odometer reading">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="price" class="col-sm-5 control-label">Price:</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control inputstl" id="price" placeholder="Enter vehicle price">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="color" class="col-sm-5 control-label">COLOR:</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control inputstl" id="color" placeholder="Select vehicle color">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="photo" class="col-sm-5 control-label">Select a File to upload:</label>
                        <div class="col-sm-12">
                            <input type="file" class="inputstl" id="photo" name="sentfile" tabindex="-1" style="position: absolute; clip: rect(0px, 0px, 0px, 0px);">
                            <div class="bootstrap-filestyle input-group">
                                <label for="photo" class="btn btn-primary " >
                                    <span class="icon-span-filestyle glyphicon glyphicon-upload" ></span>
                                    <span  class="buttonText"> Upload an Image</span>
                                </label>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                    </div>
                </form>
            </div>
        </div>
    </div>
</td>
            </div>

            <!-- footer -->
            <div class="modal-footer">
                <h5 class="col-sm-offset-2 col-sm-4">Submit changes</h5>
                <button type="button" class="btn btn-danger" data-dismiss="modal" aria-label="Close">No</button>
                <button type="button" class="btn getInfo btn-primary" data-dismiss="modal" aria-label="Close">Yes</button>
            </div>
            <!-- end of footer-->
</div>
    </div>
</div>
<!-- END OF THE POP UPS pages -->

<script>
    $(function() {
        $(".search").on("click", function(evt) {
            console.log("*****************ASTA LAVISTA BABAY*********************");
            var condition =$('#condition option:selected').val();
            var color =$('#color option:selected').val();
            var make =$('#make option:selected').val();
            var model =$('#model option:selected').val();
            var minMilleage = document.getElementById('minMilleage').value;
            var maxMilleage = document.getElementById('maxMilleage').value;
            var minPrice = document.getElementById('minPrice').value;
            var maxPrice = document.getElementById('maxPrice').value;
            var minYear = document.getElementById('minYear').value;
            var maxYear = document.getElementById('maxYear').value;
            var search = {};
            search["condition"]=condition;
            search["price"]=minPrice+";"+maxPrice;
            search["year"]=minYear+";"+maxYear;
            search["make"]=make;
            search["color"]=color;
            search["model"]=model;
            search["mileage"]=minMilleage+";"+maxMilleage;;
            fire_ajax_submit(search);
        });
    });
    $(document).ready(function () {
        console.log("********************************");

        $(".search2").submit(function (event) {
            event.preventDefault();
            fire_ajax_submit();
        });

    });

    function fire_ajax_submit(search) {

        console.log("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^");
        jQuery.ajax({
            type: "POST",
            contentType: "application/json",
            url: "/api/search",
            data: JSON.stringify(search),
            dataType: 'json',
            cache: false,
            timeout: 600000,
            success: function (data) {
                var html = '';
                var imgcount =1;
                if (data.length > 0) {
                    for (var count = 0; count < data.length; count++) {
                        console.log("^^^^^^^^^^^^^^^^^^IM IN BABAY^^^^^^^^^^^^");
                        html += "<div class=\"col-xs-12 col-sm-6 col-md-4\">";
                        html += "<div class=\"image-flip\" ontouchstart=\"this.classList.toggle('hover');\">";
                        html += '<a type="button" class="btn popoverButton btn-info" type="submit" data-toggle="modal" id="+'+data[count].id+'" data-target="#basicModal"><span class="popoverNumber"><h5>Edit</h5><span></a>';
                        html += "<div class=\"mainflip\">";
                        html +="</p>";
                        html += "<div class=\"frontside\"><div class=\"card\"><div class=\"card-body text-center\">";
                        html += "<p><img class=\" img-fluid\" src=\"css/js/car"+imgcount+".jpg\" alt=\"card image\"></p>";
                        html += "<h4 class=\"card-title\">"+data[count].maker+" "+data[count].model+"</h4>";
                        html += "<p class=\"card-text\">Year : "+data[count].year+"</p>";
                        html += "<p class=\"card-text\">millage : "+data[count].millage+"</p>";
                        html += "<p class=\"card-text\">Price : $"+data[count].price+"</p>";
                        html += "<a href=\"#\" class=\"btn btn-primary btn-sm\"><i class=\"fa fa-plus\"></i></a> </div> </div></div>";
                        html += "<div class=\"backside\"><div class=\"card\"> <div class=\"card-body text-center mt-4\"> <h4 class=\"card-title\">"+data[count].maker+" "+data[count].model+"</h4>";
                        html += "<p class=\"card-text\">" +
                            "<p class=\"card-text text-primary\">  Year         : "+data[count].year+"<p>" +
                            "<p class=\"card-text  text-primary\">  Millage      : "+data[count].millage+"</p>" +
                            "<p class=\"card-text  text-primary\">  Price        : $"+data[count].price+"<p>" +
                            "<p class=\"card-text  text-primary\">  Color        : "+data[count].color+"</p>" +
                            "<p class=\"card-text  text-primary\">  Status       : "+data[count].status+"</p></p>";
                        html += "<ul class=\"list-inline\">";
                        html += "<li class=\"list-inline-item\">";
                        html += "<a class=\"social-icon text-xs-center\" target=\"_blank\" href=\"#\">";
                        html += "<i class=\"fa fa-facebook\"></i></a></li>";
                        html += "<li class=\"list-inline-item\">";
                        html += "<a class=\"social-icon text-xs-center\" target=\"_blank\" href=\"#\">";
                        html += "<i class=\"fa fa-twitter\"></i> </a> </li>";
                        html += "<li class=\"list-inline-item\">";
                        html += "<a class=\"social-icon text-xs-center\" target=\"_blank\" href=\"#\">";
                        html += "<i class=\"fa fa-skype\"></i> </a> </li>";
                        html += "<li class=\"list-inline-item\">";
                        html += "<a class=\"social-icon text-xs-center\" target=\"_blank\" href=\"#\">";
                        html += "<i class=\"fa fa-google\"></i> </a> </li> </ul> </div> </div> </div> </div> </div> </div>";
                        imgcount = imgcount+1;
                        if(imgcount===7){
                            imgcount=1;
                        }
                    }} else {
                    html = '<tr><td colspan="5">No Data Found</td></tr>';
                }
                $("#result").html(html);
                console.log("^^^^^^^^^^^^^^^^^^I HAVE LEFT^^^^^^^^^^^^");
            },
            error: function (e) {
                var json = "<h4>Ajax Response</h4><pre>"
                    + e.responseText + "</pre>";
                $('#feedback').html(json);
                console.log("ERROR : ", e);
                $("#btn-search").prop("disabled", false);
            }
        });
    }

    $(function() {
        $(".homeSubmenu7").on("click", function(evt) {
            evt.preventDefault();
            $('div.keywords').empty();
            $('div.mylable').empty();
        });
    });



    $(function() {
        $(".homeSubmenu6").on("click", function(evt) {
            evt.preventDefault();
            $('div.keywords').empty();
            $('div.mylable').empty();
        });
    });


    $(document).on("click", '.popoverButton', function(event){

        //alert('Modal is successfully shown! :');
        event.preventDefault();
        $('div.keywords').empty();
        $('div.mylable').empty();
         var id = $(this).attr("id");
        $('div.mylable').append('<label for="model" class="col-sm-5 control-label">Vehicle Id:</label>');
        $('div.keywords').append('<input type="text" class="form-control inputstl" id="id" placeholder="'+id+'" value="'+id+'">');

    });


    window.onload = function () {
        var search = {};
        search["category"]="hello";
        search["search"]="hello";
        fire_ajax_submit(search);
    };



    <!-- Submit for new/edit vehicles -->

    $(function() {
        $(".getInfo").on("click", function(evt) {

            var vehicle = {};
            var id=null;
            evt.preventDefault();
            if(document.getElementById('id')){
                id = document.getElementById('id').value;
            }
            var id2=$(this).attr("id");
            var id3 = $("#id").val();
            console.log("*********** ID :"+id);
            console.log("*********** ID :"+id2);
            console.log("*********** ID :"+id3);
            var make = document.getElementById('make').value;
            var model = document.getElementById('model').value;
            var price = document.getElementById('price').value;
            var year = document.getElementById('year').value;
            var image = document.getElementById('photo').value;
            var millage = document.getElementById('odo').value;
            var color = document.getElementById('color').value;
            var status = document.getElementById('status').value;


            console.log("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^");
            console.log(make);
            console.log(model);
            console.log("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^");

            vehicle["id"] = id;
            vehicle["price"] = price;
            vehicle["status"] = status;
            vehicle["year"] = year;
            vehicle["maker"] = make;
            vehicle["color"] = color;
            vehicle["model"] = model;
            vehicle["millage"] = millage;
            vehicle["image"] = image;
            submitVehicle(vehicle);
        });
    });

    function submitVehicle(vehicle) {
        jQuery.ajax({
            type: "POST",
            contentType: "application/json",
            url: "/api/add",
            data: JSON.stringify(vehicle),
            dataType: 'json',
            cache: false,
            timeout: 600000,
            success: function (data) {
                var json = "<h4>Vehicle was added successfully</h4>" +
                    "<pre>Please proceed to add other vehicles</pre>";
                $("#feedback").html(json);
                console.log("Success : ", json);
            },
            error: function (e) {
                var json = "<h4>An error occured</h4>" +
                    "<pre>"+e.responseText+"</pre>";
                $("#feedback").html(json);
                console.log("ERROR : ", e);
            }
        });
    }
</script>
</html>