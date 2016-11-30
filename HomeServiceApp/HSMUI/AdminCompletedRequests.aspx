<%@ Page Language="C#"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Completed requests for administrator">
	<meta name="author" content="ArjunB">

	<title>Completed Requests</title>

	<link rel="icon" href="images/favicon.jpg">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300,600,400' rel='stylesheet' type='text/css'>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link type="text/css" rel="stylesheet" href="css/jsgrid.min.css" />
	<link type="text/css" rel="stylesheet" href="css/jsgrid-theme.min.css" />
	<link type="text/css" href="css/adminStyle.css" rel="stylesheet">
	<link type="text/css" href="css/showRequests.css" rel="stylesheet">
    <link type="text/css" href="css/assignRequest.css" rel="stylesheet" />
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.2/themes/cupertino/jquery-ui.css">
    
    <script src="js/jquery-2.0.0.min.js"></script>
    <script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
	<script src="js/jsgrid.core.js"></script>
	<script src="js/jsgrid.load-indicator.js"></script>
	<script src="js/jsgrid.load-strategies.js"></script>
	<script src="js/jsgrid.sort-strategies.js"></script>
	<script src="js/jsgrid.field.js"></script>
	<script src="js/jsgrid.field.text.js"></script>
	<script src="js/jsgrid.field.number.js"></script>
	<script src="js/jsgrid.field.select.js"></script>
	<script src="js/jsgrid.field.checkbox.js"></script>
	<script src="js/jsgrid.field.control.js"></script>
</head>

<body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="AdminDashboard.aspx">Home Service Manager</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="AdminDashboard.aspx">Dashboard</a></li>
            <li><a href="#">Profile</a></li>
            <li><a href="Default.aspx">Logout</a></li>
          </ul>
        </div>
      </div>
    </nav>
	
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 col-md-2 sidebar" id="sidebar">
				<ul class="nav nav-sidebar">
					<li><a href="AdminDashboard.aspx">Active Requests</a></li>
					<li class="active"><a href="#">Completed Requests <span class="sr-only">(current)</span></a></li>
					<li><a href="AdminRejectedRequests.aspx">Rejected Requests</a></li>
				</ul>
				<ul class="nav nav-sidebar">
					<li><a href="AddService.aspx">Add Service</a></li>
					<li><a href="ManageService.aspx">Manage Service</a></li>
				</ul>
				<ul class="nav nav-sidebar">
					<li><a href="AddCaregiver.aspx">Add Caregiver</a></li>
					<li><a href="">Manage Caregiver</a></li>
				</ul>
				<ul class="nav nav-sidebar">
					<li><a href="#">Reports</a></li>
					<li><a href="#">Analytics</a></li>
					<li><a href="#">Export</a></li>
				</ul>
			</div>
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<h1 class="page-header" >Active Requests</h1>
			</div>
		</div>
	</div>
	
	<div id="jsGrid" name="jsGrid" class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 "></div>
    
	<script>
        
		$(function() {
			$("#jsGrid").jsGrid({
				width: "53%",
				height: "80%",
				filtering: true,
				editing: false,
				sorting: true,
				paging: true,
				autoload: true,
				pageSize: 10,
				pageButtonCount: 5,
				noDataContent: "No completed service requests at the moment",
				loadMessage: "Fetching Completed Requests...",
				loadShading: true,
				controller: {
				    loadData: function (filter) {
				        var reqData = $.Deferred();
				        $.ajax({
				            type: "GET",
				            //dataType: "json",
				            url: "",
				        }).done(function (result) {
				            result = $.grep(result, function (request) {
				                return (!filter.RequestId || request.RequestId.indexOf(filter.RequestId) > -1)
                                && (!filter.Name || request.Name.indexOf(filter.Name) > -1)
                                && (!filter.Service || request.Service.indexOf(filter.Service) > -1)
                                && (!filter.Date || request.Date.indexOf(filter.Date) > -1)
                                && (!filter.From || request.From.indexOf(filter.From) > -1)
                                && (!filter.To || request.To.indexOf(filter.To) > -1)
                                && (!filter.Location || request.Location.indexOf(filter.Location) > -1);
				            });
				            reqData.resolve(result);
				        })
				        return reqData.promise();
				    }
				},
				fields: [
					{ name: "RequestId", type: "number", width: 10 },
					{ name: "Name", type: "text", width: 20 },
					{ name: "Service", type: "text", width: 25 },
					{ name: "Date", type: "text", width: 15 },
					{ name: "From", type: "text", width: 15 },
					{ name: "To", type: "text", width: 15 },
					{ name: "Location", type: "text", width: 30 }
				]
			});
		}); 
	</script>
    
</body>
</html>


