<html xmlns="http://www.w3.org/1999/xhtml" xmlns:og="http://ogp.me/ns#" xmlns:fb="https://www.facebook.com/2008/fbml"><head><script src="https://connect.facebook.net/en_US/sdk.js?hash=6a08d399d1e4ac9ad786d5a558da3124&amp;ua=modern_es6" async="" crossorigin="anonymous"></script>
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
            <a href="main" type="button" id="Home" class="btn ummaize">
                <i class="fas fa-align-left"></i>
                <h6>HOME</h6>
            </a>
        </div>
    </nav>
<div class="container">
    <div class="row" style="margin-top:60px;">
        <div class="col-md-4 W-100">
        </div>
        <div class="col-md-5 W-100">
            <form>
                <fieldset>
                    <h3 class="sign-up-title" style="color:dimgray; text-align: center">Welcome back! Please sign in</h3>
                    <hr class="colorgraph">
                    <input class="form-control email-title" placeholder="E-mail"  id="username" type="text">
                    <input class="form-control" placeholder="Password" id="password" type="password" value="">
                    <!--a class="pull-left" href="http://localhost:8080/password">Forgot password?</a-->
                    <div class="checkbox" style="width:140px;">
                        <label><input name="remember" type="checkbox" value="Remember Me"> Remember Me</label>
                    </div>
                    <input class="page-link btn btn-lg ummaize btn-block" type="submit" value="Login">
                    <br>
                    <p class="text-center"><a href="http/localhost:8080/register">Register for an account?</a></p>
                </fieldset>
            </form>
        </div>
    </div>
</div>
<script>

    $(function() {
    $(".page-link").on("click", function(evt) {

        var user = {};
        evt.preventDefault();
        var username = document.getElementById('username').value;
        var password = document.getElementById('password').value;
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
        $("#btn-search").prop("disabled", true);
        jQuery.ajax({
            type: "POST",
            contentType: "application/json",
            url: "/login/info",
            data: JSON.stringify(user),
            dataType: 'json',
            cache: false,
            timeout: 600000,
            success: function (data) {
                var json = "<h4>Ajax Response</h4><pre>"
                    + data.username  +" AND "+ data.password+ "</pre>";
                console.log("Success : ", json);
                if(data.role==="admin"){
                    $(location).attr('href', 'http://localhost:8080/admin');
                }else {
                    $(location).attr('href', 'http://localhost:8080/main');
                }},
            error: function (e) {
                var json = "<h4>Ajax Response</h4><pre>"
                    + e.responseText + "</pre>";
                console.log("ERROR : ", e);

            }
        });
    }
</script>
</body>
</html>