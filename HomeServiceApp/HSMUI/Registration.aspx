<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="Register here">
    <meta name="author" content="IanP">
    <link rel="icon" href="/images/favicon.jpg">

    <title>Registration</title>

    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="/css/seniorDashboard.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/css/bootstrap-datetimepicker.min.css" />

    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.6/moment.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js"></script>
</head>

<body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">Home Service Manager</a>
            </div>
        </div>
    </nav>

    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-3 col-md-2 sidebar" id="sidebar">
                <ul class="nav nav-sidebar">
                    <li class="active"><a href="#">Shedule a Service<span class="sr-only">(current)</span></a></li>
                    <li><a href="SeniorActiveRequests.aspx">Requests Being Serviced</a></li>
                    <li><a href="SeniorCompletedRequests.aspx">Completed Requests</a></li>
                    <li><a href="SeniorRejectedRequests.aspx">Rejected Requests</a></li>
                </ul>
            </div>
            <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
                <h1 class="page-header">Register</h1>
                <div id="servicesDiv" class="col-sm-offset-1">
                </div>
            </div>
        </div>
    </div>

    <!-- Schedule Service Modal  -->
    <div class="modal fade" id="schSrvModal">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="modalLabel">New request</h4>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label for="serviceName" class="control-label">Service Type:</label>
                            <input type="text" class="form-control" id="serviceName" disabled>
                        </div>
                        <div class="form-group">
                            <label for="reqDate" class="control-label">Date:</label>
                            <input type="date" class="form-control" id="reqDate" required>
                        </div>
                        <div class="form-group">
                            <label for="reqTimeFrom" class="control-label">Service Start Time (Example: 13:00 for 1 PM):</label>
                            <input type="time" class="form-control" id="reqTimeFrom" required>
                        </div>
                        <div class="form-group">
                            <label for="reqTimeTo" class="control-label">Service End Time (Example: 14:00 for 2 PM):</label>
                            <input type="time" class="form-control" id="reqTimeTo" required>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script src="/js/seniorDashboard.js"></script>
</body>
</html>
<!--
<body>
    <div id="header">
        <h1>Register</h1>
    </div>
    <div class="container" id="fields">
        <form id="registration" method="post">
            <ul>
                <li>
                    <label for="firstName">First Name</label>
                    <input type="text" id="firstName" name="firstName" required/>
                </li>
                <li>
                    <label for="lastName">Last Name</label>
                    <input type="text" id="lastName" name="lastName" required/>
                </li>
                <li>
                    <label for="username">Username</label>
                    <input type="text" id="username" name="username" required/>
                </li>
                <li>
                    <label for="password">Password</label>
                    <input type="text" id="password" name="password" required/>
                </li>
                <li>
                    <label for="contactNum">Contact Number</label>
                    <input type="text" id="contactNum" name="contactNum" required/>
                </li>
                <li>
                    <label for="addressLine1">Address Line 1</label>
                    <input type="text" id="addressLine1" name="addressLine1" required/>
                </li>
                <li>
                    <label for="addressLine2">Address Line 2</label>
                    <input type="text" id="addressLine2" name="addressLine2" />
                </li>
                <li>
                    <label for="sex">Sex</label>
                    <input type="text" id="sex" name="sex" required/>
                </li>
            </ul>
            <button type="submit" id="register" name="register">Register</button>
        </form>
        <button id="registration-cancel">Cancel</button>
    </div>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="assets/js/ie10-viewport-bug-workaround.js"></script>
    <script src="js/registration.js"></script>
</body>
-->



