<html xmlns="http://www.w3.org/1999/xhtml" xmlns:og="http://ogp.me/ns#" xmlns:fb="https://www.facebook.com/2008/fbml"><head><script src="https://connect.facebook.net/en_US/sdk.js?hash=6a08d399d1e4ac9ad786d5a558da3124&amp;ua=modern_es6" async="" crossorigin="anonymous"></script>



    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <meta name="msvalidate.01" content="36A28D9109C077BA3E623651FC1656F4">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta property="fb:admins" content="19908503">
    <meta property="fb:app_id" content="112989545392380">
    <meta property="og:title" content="HTML Snippets for Twitter Boostrap framework : Bootsnipp.com">
    <meta property="og:type" content="website">
    <meta property="twitter:account_id" content="786331568">
    <meta itemprop="name" content="Bootsnipp">
    <meta itemprop="description" content="Free HTML snippets for Bootstrap HTML CSS JS">
    <meta property="og:url" content="https://bootsnipp.com">
    <meta property="og:image" content="https://bootsnipp.com/img/logo.jpg">
    <meta property="og:site_name" content="Bootsnipp.com">

    <meta property="og:description" content="A design element gallery for web designers and web developers. Find snippets using HTML, CSS, Javascript, jQuery, and Bootstrap.">
    <meta name="description" content="A design element gallery for web designers and web developers. Find snippets using HTML, CSS, Javascript, jQuery, and Bootstrap">
    <title>Welcome back! Please sign in </title>

    <script id="facebook-jssdk" src="//connect.facebook.net/en_US/sdk.js#xfbml=1&amp;version=v2.4&amp;appId=112989545392380"></script>
    <script async="" src="//connect.facebook.net/en_US/fp.js"></script><script async="" src="//www.google-analytics.com/analytics.js"></script>
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    <link rel="shortcut icon" href="//d2d3qesrx8xj6s.cloudfront.net/favicon.ico" type="image/x-icon">
    <link rel="icon" href="//d2d3qesrx8xj6s.cloudfront.net/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon-precomposed" href="//d2d3qesrx8xj6s.cloudfront.net/apple-touch-icon-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="//d2d3qesrx8xj6s.cloudfront.net/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="//d2d3qesrx8xj6s.cloudfront.net/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="//d2d3qesrx8xj6s.cloudfront.net/apple-touch-icon-144x144-precomposed.png">
    <link rel="alternate" type="application/rss+xml" title="Latest snippets from Bootsnipp.com" href="https://bootsnipp.com/feed.rss">

    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.min.css">
    <link rel="stylesheet" href="/dist/bootsnipp.min.css">
    <style type="text/css">

        body{
            background-image: url('dist/img/looping-bg.jpg');
        }
        .form-signin input[type="text"] {
            margin-bottom: -1px;
            border-bottom-left-radius: 0;
            border-bottom-right-radius: 0;
        }
        .form-signin input[type="password"] {
            margin-bottom: 10px;
            border-top-left-radius: 0;
            border-top-right-radius: 0;
        }
        .form-signin .form-control {
            position: relative;
            font-size: 16px;
            height: auto;
            padding: 10px;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

    </style>
<div class="container">
    <div class="row" style="margin-top:60px;">
        <div class="col-md-4 col-md-offset-4">
            <form>
                <fieldset>
                    <h3 class="sign-up-title" style="color:dimgray; text-align: center">Welcome back! Please sign in</h3>
                    <hr class="colorgraph">
                    <input class="form-control email-title" placeholder="E-mail"  id="username" type="text">
                    <input class="form-control" placeholder="Password" id="password" type="password" value="">
                    <a class="pull-right" href="http://localhost:8080/password">Forgot password?</a>
                    <div class="checkbox" style="width:140px;">
                        <label><input name="remember" type="checkbox" value="Remember Me"> Remember Me</label>
                    </div>
                    <input class="page-link btn btn-lg btn-success btn-block" type="submit" value="Login">
                    <br>
                    <p class="text-center"><a href="http/localhost:8080/register">Register for an account?</a></p>
                </fieldset>
            </form>
        </div>
    </div>
</div>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="/dist/scripts.min.js"></script>
<script async="" src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<script src="//www.danstools.com/js/forum.js"></script>
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
                    $(location).attr('href', 'http://localhost:8080/index');
                }else {
                    $(location).attr('href', 'http://localhost:8080/payment');
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