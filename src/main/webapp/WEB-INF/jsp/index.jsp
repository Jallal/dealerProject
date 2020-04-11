<!DOCTYPE html>
<html>

<head>
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

</head>

<body>
<nav class="navbar navbar-expand-lg navbar-light text-white">
    <div class="container-fluid">
        <a href="account" type="button" id="Home" class="btn ummaize">
            <i class="fas fa-align-left"></i>
            <h6>Home</h6>
        </a>
        <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <i class="fas fa-align-justify"></i>
        </button>
        <h1><img src="css/js/um.png" alt="Italian Trulli" height="150" width="150">UNIVERSITY OF MICHIGAN-DEARBORN</h1>
        <br/>
    </div>
</nav>

<div class="wrapper">
    <!-- Sidebar  -->
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

    <!-- Page Content  -->
    <div id="content">
        <!--nav class="navbar navbar-expand-lg navbar-light text-white bg-white">
            <div class="container-fluid">
                <button type="button" id="sidebarCollapse" class="btn ummaize">
                    <i class="fas fa-align-left"></i>
                    <span>Categories filter</span>
                </button-->
                <!--button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fas fa-align-justify"></i>
                </button-->
                <!--h1><img src="css/js/um.png" alt="Italian Trulli" height="150" width="150">UNIVERSITY OF MICHIGAN-DEARBORN</h1>
                <br/>
            </div>
        </nav-->
        <!-- Search section -->
        <section class="search-sec">
            <div class="container">
                <form action="#" method="post" novalidate="novalidate">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="row">
                                <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                                    <select class="form-control search-slt" id="exampleFormControlSelect1">
                                        <option>Select search criteria</option>
                                        <option>Course number</option>
                                        <option>Course Title</option>
                                        <option>Professor</option>
                                        <option>Meeting time</option>
                                    </select>
                                </div>
                                <div class="col-lg-6 col-md-3 col-sm-12 p-0">
                                    <input type="text" id="tags" class="form-control search-slt" data-role="tagsinput"/>
                                </div>
                                <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                                    <button type="button" name="search" class="btn btn-info search-slt2" id="search">Search</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
                <br/>
            </div>
        </section>
        <!--End of search section-->
        <div class="line"></div>
        <!-- Table start-->
        <!-- Table style start -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <!--Table style end-->
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-4">
                        <div class="show-entries">
                            <span>Show</span>
                            <select class="listOdRecords" id="myselect">
                                <option>5</option>
                                <option>10</option>
                                <option>20</option>
                                <option>30</option>
                            </select>
                            <span>entries</span>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <h2 class="text-center">Course Search and Criteria</h2>
                    </div>
                </div>
            </div>
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>Course Number</th>
                    <th>Title</th>
                    <th>Subject Description</th>
                    <th>Subject</th>
                    <th>Term</th>
                    <th>Professor</th>
                    <th>Meeting Time</th>
                    <th>Available seats</th>
                    <th>Add/Drop</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>Thomas Hardy</td>
                    <td>89 Chiaroscuro Rd.</td>
                    <td>Portland</td>
                    <td>USA</td>

                    <td>
                        <div class="icon-preview"><i class="material-icons md-24">add_box</i></div>
                    </td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Maria Anders</td>
                    <td>Obere Str. 57</td>
                    <td>Berlin</td>
                    <td>Germany</td>
                    <td>
                        <a href="#" class="view" title="View" data-toggle="tooltip"><i class="material-icons">&#xE417;</i></a>
                        <a href="#" class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
                        <a href="#" class="delete" title="Delete" data-toggle="tooltip"><i
                                class="material-icons">&#xE872;</i></a>
                    </td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Fran Wilson</td>
                    <td>C/ Araquil, 67</td>
                    <td>Madrid</td>
                    <td>Spain</td>
                    <td>
                        <a href="#" class="view" title="View" data-toggle="tooltip"><i class="material-icons">&#xE417;</i></a>
                        <a href="#" class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
                        <a href="#" class="delete" title="Delete" data-toggle="tooltip"><i
                                class="material-icons">&#xE872;</i></a>
                    </td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>Dominique Perrier</td>
                    <td>25, rue Lauriston</td>
                    <td>Paris</td>
                    <td>France</td>
                    <td>
                        <a href="#" class="view" title="View" data-toggle="tooltip"><i class="material-icons">&#xE417;</i></a>
                        <a href="#" class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
                        <a href="#" class="delete" title="Delete" data-toggle="tooltip"><i
                                class="material-icons">&#xE872;</i></a>
                    </td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>Dominique Perrier</td>
                    <td>25, rue Lauriston</td>
                    <td>Paris</td>
                    <td>France</td>
                    <td>
                        <a href="#" class="view" title="View" data-toggle="tooltip"><i class="material-icons">&#xE417;</i></a>
                        <a href="#" class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
                        <a href="#" class="delete" title="Delete" data-toggle="tooltip"><i
                                class="material-icons">&#xE872;</i></a>
                    </td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>Dominique Perrier</td>
                    <td>25, rue Lauriston</td>
                    <td>Paris</td>
                    <td>France</td>
                    <td>
                        <a href="#" class="view" title="View" data-toggle="tooltip"><i class="material-icons">&#xE417;</i></a>
                        <a href="#" class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
                        <a href="#" class="delete" title="Delete" data-toggle="tooltip"><i
                                class="material-icons">&#xE872;</i></a>
                    </td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>Dominique Perrier</td>
                    <td>25, rue Lauriston</td>
                    <td>Paris</td>
                    <td>France</td>
                    <td>
                        <a href="#" class="view" title="View" data-toggle="tooltip"><i class="material-icons">&#xE417;</i></a>
                        <a href="#" class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
                        <a href="#" class="delete" title="Delete" data-toggle="tooltip"><i
                                class="material-icons">&#xE872;</i></a>
                    </td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>Dominique Perrier</td>
                    <td>25, rue Lauriston</td>
                    <td>Paris</td>
                    <td>France</td>
                    <td>
                        <a href="#" class="view" title="View" data-toggle="tooltip"><i class="material-icons">&#xE417;</i></a>
                        <a href="#" class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
                        <a href="#" class="delete" title="Delete" data-toggle="tooltip"><i
                                class="material-icons">&#xE872;</i></a>
                    </td>
                </tr>
                </tbody>
                <br/>
            </table>
            <div class="clearfix">
                <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>
                <ul class="pagination">
                    <li class="page-item disabled"><a href="#">Previous</a></li>
                    <li class="page-item active"><a href="1" class="page-link">1</a></li>
                    <li class="page-item"><a href="2" class="page-link">2</a></li>
                    <li class="page-item "><a href="3" class="page-link">3</a></li>
                    <li class="page-item"><a href="4" class="page-link">4</a></li>
                    <li class="page-item"><a href="5" class="page-link">5</a></li>
                    <li class="page-item"><a href="next" class="page-link">Next</a></li>
                </ul>
            </div>
        </div>
        <!--TEST TABLE-->
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <!--table end-->
        <div class="line"></div>
        <!-- Table Graph and Pie --->
        <div class="row">
            <!-- Starting the graph-->
            <div class="col col-lg-12">
                <h2 class="text-center">Current Schedule</h2>
                <!--button class="btn float-right btn-info">Confirm Schedule</button-->
                <a href="Do you want to register the courses from your running schedule?" data-title="Confirm schedule"  id="hello"  lang=""  class="registerButton btn btn-info" data-toggle="popover" data-trigger="focus" data-popover-content="#a1" data-placement="right"><span class="col-lg-2 col-md-3 col-sm-12 p-12  btn-info">Confirm Schedule</span></a></td>
                <div class="col-lg-2 col-md-3 col-sm-12 p-12 float-right">
                    <select class="form-control search-slt bg-info text-white" id="selectTerm">
                        <option>Winter 2020</option>
                        <option>Summer 2020</option>
                        <option>Fall 2020</option>
                    </select>
                </div>
                <div class="table-wrapper">
                    <div class="card spur-card">
                        <!--graph for publications-->
                        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
                        <div id="columnchart_material" style="width: 1550px; height: 280px;">
                        </div>
                        <script type="text/javascript" src="css/js/pubPerYearGraph.js"></script>
                    </div>
                </div>
            </div>
        </div>
        <div class="line"></div>

        <!-- Table Graph country per publication and Map --->
        <!-- END GRAPH AND MAP-->
    </div>
</div>

<script type="text/javascript">
  $(document).ready(function () {
    $('#sidebarCollapse').on('click', function () {
      $('#sidebar').toggleClass('active');
    });
  });
</script>
</body>


<!-- Content for Popover #1 -->
<div class="hidden" id="a1">
    <div class="popover-heading" id="title"></div>
    <div class="popover-body">
        <div class="abstract"></div>
        <div class="keywords"></div>
    </div>
</div>

</html>


<script>
  $(document).ready(function () {
    console.log("********************************");

    $("#search").submit(function (event) {

//stop submit the form, we will post it manually.
      event.preventDefault();

      fire_ajax_submit();

    });

  });

  function fire_ajax_submit(search) {

    $("#btn-search").prop("disabled", true);
    jQuery.ajax({
      type: "POST",
      contentType: "application/json",
      url: "/api/search",
      data: JSON.stringify(search),
      dataType: 'json',
      cache: false,
      timeout: 600000,
      success: function (data) {
        $('#total_records').text(data.length);
        var html = '';
        if (data.length > 0) {



          for (var count = 0; count < data.length; count++) {

            html += '<tr>';
            html += '<td>' + '<a href="' + data[count].description + '" data-title="' + data[count].title + '"  id="hello"  lang="'+data[count].fulldetails+'"  class="popoverButton btn btn-info" data-toggle="popover" data-trigger="focus" data-popover-content="#a1" data-placement="right"><span class="popoverNumber">' + data[count].courseNumber + '</span></a></td>';
            html += '<td>' + data[count].title + '</td>';
            html += '<td>' + data[count].description + '</td>';
            html += '<td>' + data[count].subject + '</td>';
            html += '<td>' + data[count].term + '</td>';
            html += '<td>' + data[count].professor + '</td>';
            html += '<td>' + data[count].time + '</td>';
            html += '<td>' + data[count].aSeats + '</td>';
            if (data[count].isadded==="FALSE") {
              html += '<td><button class="btn btn-info">Add Course</button></td>';
            }if (data[count].isadded==="true") {
              html += '<td><button class="btn btn-warning">Drop Course</button></td>';
            }
          }

          jQuery.getScript("css/js/pubPerYearGraph.js").done(function () {
            console.log("yay, all good, do something *");
            //drawBarChart(data[0].publicationsPerYear);
            drawBarChart()
          }).fail(function () {
            console.log("boo first chart failed , fall back to something else");
          });

          jQuery.getScript("css/js/tagPie.js").done(function () {
            console.log("yay, all good, do something *");
            //drawPieChart(data[0].publicationsPerCategory);
            drawPieChart();
          }).fail(function () {
            console.log("boo first chart failed , fall back to something else");
          });

        } else {
          html = '<tr><td colspan="5">No Data Found</td></tr>';
        }
        $('tbody').html(html);

        //will clear all the empty DIVs with the following classes
        (function ($) {
          $(document).ready(function(){
            console.log( 'Before: ', $('div') );
            $('.hideKeyWords, .hideKeyWords1, .hideKeyWords2, .hideKeyWords3,.hideKeyWords4').filter(function() {
              return $.trim($(this).text()) === '';
            }).remove();
            console.log( 'After: %%%%%%%%%%%%%%%%%', $('div') );
          });
        })(jQuery);

        //get the number of pages to display
        var numerOfRecords = $( "#myselect option:selected" ).text();
        //show only certain number
        $("table > tbody > tr").hide().slice(0, numerOfRecords).show();
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

  $('#search').click(function () {
    var search = {};
    search["search"] = $("#exampleFormControlSelect1").val();
    search["authorName"] = $('#tags').val();
    fire_ajax_submit(search);
  });

  //test

  $(document).on("click", '.popoverButton', function(evt){

    evt.preventDefault();
    $('div.popover-heading').empty();
    $('div.abstract').empty();
    $('div.keywords').empty();
    $('div.popover-heading').append('<span class="close pull-right" data-dismiss="popover-x">&times;</span>');
    $('div.popover-heading').append('<h6> <span class="popoverBox">Course Title : </span>'+$(this).attr("data-title")+"<h6>")
    $('div.abstract').append('<span class="popoverBox">Subject : </span>'+$(this).attr("href"));

    //add space
    $('div.abstract').append("</p>");
    //authors
    var authors = $(this).attr("lang");
    $('div.abstract').append(authors+"<br>");

    //keywords
    var keywords = $(this).attr("id");
    $('div.keywords').append('<span class="popoverBox"><span><button class="btn btn-info">More info</button><button class="btn float-right btn-warning">Add to selected courses</button></span></span>');
    $("[data-toggle=popover]").popover({
      html: true,
      content: function() {
        var content = $(this).attr("data-popover-content");
        return $(content).children(".popover-body").html();
      },
      title: function() {
        var title = $(this).attr("data-popover-content");
        return $(title).children(".popover-heading").html();
      }

    }).on('shown.bs.popover', function () {
      $popup.popover('hide');
    });

    if ($(this).prop('popShown') == undefined) {
      $(this).prop('popShown', true).popover('show');
    }
    $("#a1").hide();
  });


  $(document).on("click", '.registerButton', function(evt){

      evt.preventDefault();
      $('div.popover-heading').empty();
      $('div.abstract').empty();
      $('div.keywords').empty();
      $('div.popover-heading').append('<span class="close pull-right" data-dismiss="popover-x">&times;</span>');
      $('div.popover-heading').append('<h6> <span class="popoverBox">'+$(this).attr("data-title")+"</span><h6>")
      $('div.abstract').append('<span class="popoverBox"></span>'+$(this).attr("href"));

      //add space
      $('div.abstract').append("</p>");
      //authors
      var authors = $(this).attr("lang");
      $('div.abstract').append(authors+"<br>");

      //keywords
      var keywords = $(this).attr("id");
      $('div.keywords').append('<span class="popoverBox"><span><button class="btn btn-info">YES</button><button class="btn float-right btn-danger">NO</button></span></span>');
      $("[data-toggle=popover]").popover({
          html: true,
          content: function() {
              var content = $(this).attr("data-popover-content");
              return $(content).children(".popover-body").html();
          },
          title: function() {
              var title = $(this).attr("data-popover-content");
              return $(title).children(".popover-heading").html();
          }

      }).on('shown.bs.popover', function () {
          $popup.popover('hide');
      });

      if ($(this).prop('popShown') == undefined) {
          $(this).prop('popShown', true).popover('show');
      }
      $("#a1").hide();
  });


  $(function() {
    $(".homeSubmenu0").on("click", function(evt) {
      evt.preventDefault();
      var search = {};
      var clicked_button = $(this);
      search["category"] = clicked_button.attr("href");
      fire_ajax_submit(search);
    });
  });
  $(function() {
    $(".pageSubmenu1").on("click", function(evt) {
      evt.preventDefault();
      var search = {};
      var clicked_button = $(this);
      search["category"] = clicked_button.attr("href");
      fire_ajax_submit(search);
    });
  });
  $(function() {
    $(".pageSubmenu2").on("click", function(evt) {
      evt.preventDefault();
      var search = {};
      var clicked_button = $(this);
      search["category"] = clicked_button.attr("href");
      fire_ajax_submit(search);
    });
  });
  $(function() {
    $(".pageSubmenu3").on("click", function(evt) {
      evt.preventDefault();
      var search = {};
      var clicked_button = $(this);
      search["category"] = clicked_button.attr("href");
      fire_ajax_submit(search);
    });
  });

  $(function() {
    $(".page-link").on("click", function(evt) {
      evt.preventDefault();

      //get the number of pages to display
      var numerOfRecords= $( "#myselect option:selected" ).text();

      var index = $(this);
      var index_value=index.attr("href");
      var upper_limit=index_value*numerOfRecords;
      var lower_limit=upper_limit-numerOfRecords;
      $("table > tbody > tr").hide().slice(lower_limit, upper_limit).show();
      //update the active
      $('li > a').click(function() {
        $('li').removeClass();
        $(this).parent().addClass('page-item active');
      });
    });
  });
  $(document).ready(function(){
    $("select.listOdRecords").change(function(){
      var selectedCountry = $(this).children("option:selected").val();
      $("table > tbody > tr").hide().slice(0, selectedCountry).show();
    });
  });

  window.onload = function () {

          search["category"]="hello"
          search["search"]="hello"
          this.fire_ajax_submit(search);
  }
</script>
