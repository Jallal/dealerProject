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
        <h3>Registration Filters</h3>
    </div>
    <ul class="list-unstyled components">
        <!--p>Dummy Heading</p-->
        <li>
            <a href="#homeSubmenu4" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Search by degree</a>
            <ul class="collapse list-unstyled" id="homeSubmenu4">
                <li>
                    <a href="Information Sys Engineering" class="homeSubmenu0" >Information Sys Engineering</a>
                </li>
                <li>
                    <a href="Indust & Manufac Sys Engin" class="homeSubmenu0" >Indust & Manufac Sys Engin</a>
                </li>
                <li>
                    <a href="Business Administration"  class="homeSubmenu0" >Business Administration</a>
                </li>
                <li>
                    <a href="Accounting"  class="homeSubmenu0" >Accounting</a>
                </li>
                <li>
                    <a href="Chemistry"  class="homeSubmenu0" >Chemistry</a>
                </li>
            </ul>
        </li>
        <li>
            <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Class Term</a>
            <ul class="collapse list-unstyled" id="homeSubmenu">
                <li>
                    <a href="summer 2020" class="homeSubmenu0" >Summer 2020</a>
                </li>
                <li>
                    <a href="winter 2020" class="homeSubmenu0" >Winter 2020</a>
                </li>
                <li>
                    <a href="fall 2020"  class="homeSubmenu0" >Fall 2020</a>
                </li>
                <li>
                    <a href="summer 2019"  class="homeSubmenu0" >Summer 2019</a>
                </li>
                <li>
                    <a href="winter 2019"  class="homeSubmenu0" >Winter 2019</a>
                </li>
            </ul>
        </li>
        <li>
            <a href="#pageSubmenu1" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Class Subject</a>
            <ul class="collapse list-unstyled" id="pageSubmenu1">
                <li>
                    <a href="Recommendation" class="homeSubmenu0" >Human-Centered Design&Eng</a>
                </li>
                <li>
                    <a href="Detection" class="homeSubmenu0" >Humanities</a>
                </li>
                <li>
                    <a href="Testing"  class="homeSubmenu0" >Indus&Manifa Sys Eng</a>
                </li>
                <li>
                    <a href="Automation"  class="homeSubmenu0" >Information Sys Eng</a>
                </li>
                <li>
                    <a href="Prioritization"  class="homeSubmenu0" >Information Sys Mgr</a>
                </li>
            </ul>
        </li>
        <li>
            <a href="#pageSubmenu3" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Instructor</a>
            <ul class="collapse list-unstyled" id="pageSubmenu3">
                <li>
                    <a href="External Quality" class="homeSubmenu0" >Sang-Hwan, Kim</a>
                </li>
                <li>
                    <a href="Internal Quality" class="homeSubmenu0" >Zhiwei, Xu</a>
                </li>
                <li>
                    <a href="Performance/Parallelism"  class="homeSubmenu0" >Heezy, Does it</a>
                </li>
                <li>
                    <a href="Migration"  class="homeSubmenu0" >Paul, Richardson</a>
                </li>
                <li>
                    <a href="Security"  class="homeSubmenu0" >Armen, Zakarian</a>
                </li>
            </ul>
        </li>
        <li>
            <a href="#pageSubmenu4" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Meeting Day</a>
            <ul class="collapse list-unstyled" id="pageSubmenu4">
                <li>
                    <a href="Industrial" class="homeSubmenu0" >Monday</a>
                </li>
                <li>
                    <a href="Open Source" class="homeSubmenu0" >Tuesday</a>
                </li>
                <li>
                    <a href="Industrial" class="homeSubmenu0" >Wednesday</a>
                </li>
                <li>
                    <a href="Open Source" class="homeSubmenu0" >Thursday</a>
                </li>
                <li>
                    <a href="Industrial" class="homeSubmenu0" >Friday</a>
                </li>
                <li>
                    <a href="Open Source" class="homeSubmenu0" >Web/Online</a>
                </li>
            </ul>
        </li>

        <li>
            <a href="#pageSubmenu5" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Advanced</a>
            <ul class="collapse list-unstyled" id="pageSubmenu5">
                <li>
                    <a href="Data mining" class="homeSubmenu0" >Open Sections</a>
                </li>
                <li>
                    <a href="Search base<" class="homeSubmenu0" >No Prerequisites</a>
                </li>
                <li>
                    <a href="Formal methods" class="homeSubmenu0" >Web Only</a>
                </li>
                <li>
                    <a href="Fuzzy logic" class="homeSubmenu0" >Evening Only</a>
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

<script>
    $(document).ready(function () {
        console.log("********************************");

        $("#search").submit(function (event) {
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
                if (data.length > 0) {
                    for (var count = 0; count < data.length; count++) {
                        console.log("^^^^^^^^^^^^^^^^^^IM IN BABAY^^^^^^^^^^^^");
                        html += "<div class=\"col-xs-12 col-sm-6 col-md-4\">";
                        html += "<div class=\"image-flip\" ontouchstart=\"this.classList.toggle('hover');\">";
                        html += "<div class=\"mainflip\">";
                        html += "<div class=\"frontside\"><div class=\"card\"><div class=\"card-body text-center\">";
                        html += "<p><img class=\" img-fluid\" src=\"css/js/car1.jpg\" alt=\"card image\"></p>";
                        html += "<h4 class=\"card-title\">"+data[count].maker+" "+data[count].model+"</h4>";
                        html += "<p class=\"card-text\">Year : "+data[count].year+"</p>";
                        html += "<p class=\"card-text\">millage : $"+data[count].millage+"</p>";
                        html += "<p class=\"card-text\">Price : $"+data[count].price+"</p>";
                        html += "<a href=\"#\" class=\"btn btn-primary btn-sm\"><i class=\"fa fa-plus\"></i></a> </div> </div></div>";
                        html += "<div class=\"backside\"><div class=\"card\"> <div class=\"card-body text-center mt-4\"> <h4 class=\"card-title\">Sunlimetech</h4>";
                        html += "<p class=\"card-text\">This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.This is basic card with image on top</p>";
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
                    }
                } else {
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
    window.onload = function () {
        var search = {};
        search["category"]="hello"
        search["search"]="hello"
        this.fire_ajax_submit(search);
    }
</script>



</html>