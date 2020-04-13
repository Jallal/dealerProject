<body lang="en">
<head>
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

    <!-- jQuery CDN - Slim version (=without AJAX) -->
    <!--script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script-->

    <!--have Ajx work -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
    <!--script type="text/javascript">
        window.alert = function(){};
        var defaultCSS = document.getElementById('bootstrap-css');
        function changeCSS(css){
            if(css) $('head > link').filter(':first').replaceWith('<link rel="stylesheet" href="'+ css +'" type="text/css" />');
            else $('head > link').filter(':first').replaceWith(defaultCSS);
        }
        $( document ).ready(function() {
            var iframe_height = parseInt($('html').height());
            window.parent.postMessage( iframe_height, 'https://bootsnipp.com');
        });
    </script-->
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
            <h5>Hello, Jallal</h5>
            <h8>Account&List</h8>
        </a>
    </div>
</nav>
</head>
<!-- input form -->
</body>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>A Bootstrap form with input file and PHP upload script</title>
    <meta name="robots" content="noindex,follow">
    <link rel="stylesheet" href="style-2.css">
    <!--link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous"-->
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

    </style>

<td class="indtd">
    <div class="container">

        <div class="row" style="margin-top:60px;margin-left:120px;">
            <div class="col-md-2 W-100">
            </div>
            <div class="col-md-10 W-100">
        <form class="form-horizontal" role="form" enctype="multipart/form-data">
            <div class="form-group">
                <div id="feedback" class="bg-success text-center"></div>
                <label for="name1" class="col-sm-2 control-label">Name:</label>
                <div class="col-sm-4">
                    <input type="email" class="form-control inputstl" id="name1" placeholder="Enter Your Full Name">
                </div>
            </div>
            <div class="form-group">
                <label for="gender1" class="col-sm-2 control-label">Gender:</label>
                <div class="col-sm-2">
                    <select class="form-control inputstl" id="gender1">
                        <option>Male</option>
                        <option>Female</option>
                    </select>

                </div>
            </div>
            <div class="form-group">
                <label for="email1" class="col-sm-2 control-label">Email:</label>
                <div class="col-sm-5">
                    <input type="email" class="form-control inputstl" id="email1" placeholder="Enter Email">
                </div>
            </div>
            <div class="form-group">
                <label for="password1" class="col-sm-2 control-label">Password:</label>
                <div class="col-sm-4">
                    <input type="password" class="form-control inputstl" id="password1" placeholder="Password here">
                </div>
            </div>
            <div class="form-group">
                <label for="address1" class="col-sm-2 control-label">Address:</label>
                <div class="col-sm-5">
                    <input type="email" class="form-control inputstl" id="address1" placeholder="Full Address">
                </div>
            </div>

            <div class="form-group">
                <label for="selphoto" class="col-sm-5 control-label">Select a File to upload:</label>
                <div class="col-sm-12">
                    <input type="file" class="inputstl" id="selphoto" name="sentfile" tabindex="-1" style="position: absolute; clip: rect(0px, 0px, 0px, 0px);">
                    <div class="bootstrap-filestyle input-group">
                    <label for="selphoto" class="btn btn-primary " >
                        <span class="icon-span-filestyle glyphicon glyphicon-upload" ></span>
                    <span  class="buttonText"> Upload an Image</span>
                </label>
                </span>
                </div>
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <div class="checkbox">
                        <label>
                            <input type="checkbox" class="inputstl"> Remember me
                        </label>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-4">
                    <button type="submit" class="btn btn-lg btn-block getInfo btn-primary">Submit Vehicle</button>
                </div>
            </div>
        </form>
    </div>
        </div>
    </div>
    <script>
        $('#selphoto').filestyle({
            buttonName : 'btn-primary',
            buttonText : ' Upload an Image',
            iconName : 'glyphicon glyphicon-upload'
        });
    </script>
</td>

<!-- end of input form-->
</body>

<script>

    $(function() {
        $(".getInfo").on("click", function(evt) {

            var user = {};
            evt.preventDefault();
            var username = document.getElementById('name1').value;
            var password = document.getElementById('gender1').value;
            console.log("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^");
            console.log(username);
            console.log(password);
            console.log("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^");
            user["username"] = username;
            user["password"] = password;
            submitLoginInfo(user);
        });
    });

    function submitLoginInfo(user) {
        jQuery.ajax({
            type: "POST",
            contentType: "application/json",
            url: "/api/add",
            data: JSON.stringify(user),
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
                var json = "<h4>Ajax Response</h4><pre>"
                    + e.responseText + "</pre>";
                $("#feedback").html(json);

                console.log("ERROR : ", e);

            }
        });
    }
</script>
</html>