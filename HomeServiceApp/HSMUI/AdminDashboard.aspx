<%@ Page Language="C#"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Dashboard for administrator">
	<meta name="author" content="ArjunB">

	<title>Admin Dashboard</title>

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
	<script src="js/adminDashboardController.js"></script>
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
          <a class="navbar-brand" href="#">Home Service Manager</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#">Dashboard</a></li>
            <li><a href="#">Settings</a></li>
            <li><a href="#">Profile</a></li>
            <li><a href="#">Logout</a></li>
          </ul>
        </div>
      </div>
    </nav>
	
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 col-md-2 sidebar" id="sidebar">
				<ul class="nav nav-sidebar">
					<li class="active"><a href="#">Active Requests <span class="sr-only">(current)</span></a></li>
					<li><a href="">Completed Requests</a></li>
					<li><a href="">Rejected Requests</a></li>
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
    <div id="assignRequest">
        <form id="detailsForm">
            <div class="details-form-field">
                <label for="reqName">Requester Name:</label>
                <input id="reqName" name="reqName" type="text" disabled/>
            </div>
            <div class="details-form-field">
                <label for="reqLocation">Location:</label>
                <input id="reqLocation" name="reqLocation" type="text" disabled/>
            </div>
            <div class="details-form-field">
                <label for="reqDate">Date:</label>
                <input id="reqDate" name="reqDate" type="text" disabled />
            </div>
            <div class="details-form-field">
                <label for="reqTimeFrom">From:</label>
                <input id="reqTimeFrom" name="reqTimeFrom" type="text" disabled />
            </div>
            <div class="details-form-field">
                <label for="reqTimeTo">To:</label>
                <input id="reqTimeTo" name="reqTimeTo" type="text" disabled />
            </div>
            <div class="details-form-field">
                <label for="availableCG">Assign To:</label>
                <select id="availableCG" name="availableCG"></select>
            </div>
            <div class="details-form-field">
                <button type="submit" id="assign">Assign</button>
            </div>
        </form>
    </div>
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
				deleteConfirm: "Do you really want to reject this request?",
				noDataContent: "No active service requests at the moment",
				loadMessage: "Fetching Active Requests...",
				loadShading: true,
				controller: adminDashboardController,
				rowClick: function(args) {
				    showAvailableCG(args.item);
				},
				fields: [
					{ name: "Status", type: "select", width: 20, items: adminDashboardController.status, valueField: "Name", textField: "Name" },
					{ name: "RequestId", type: "number", width: 10 },
					{ name: "Name", type: "text", width: 20 },
					{ name: "Service", type: "text", width: 25 },
					{ name: "Date", type: "text", width: 15 },
					{ name: "From", type: "text", width: 15 },
					{ name: "To", type: "text", width: 15 },
					{ name: "Location", type: "text", width: 30 },
					{ type: "control", width: 10, editButton: false, modeSwitchButton: false }
				]
			});

			$("#assignRequest").dialog({
			    autoOpen: false,
			    width: 450,
			    close: function () {
			        $("#detailsForm").validate().resetForm();
			        $("#detailsForm").find(".error").removeClass("error");
			    }
			});

			$("#detailsForm").validate({
			    rules: {
			        availableCG: "required"
			    },
			    messages: {
			        availableCG: "Please assign the request to an available caregiver"
			    },
			    submitHandler: function () {
			        formSubmitHandler();
			    }
			});

			var formSubmitHandler = $.noop;

			var showAvailableCG = function (request) {
			    $("#reqName").val(request.Name);
			    $("#reqLocation").val(request.Location);
			    $("#reqDate").val(request.Date);
			    $("#reqTimeFrom").val(request.From);
			    $("#reqTimeTo").val(request.To);

			    var urlParams = "?servicetype="+request.Service+"&reqdate="+request.Date+"&reqtimefrom="+request.From
                                +"&reqtimeto="+request.To;
			    console.log(urlParams);
			    $.ajax({
			        type: "GET",
			        //url: ""+urlParams,
			        url: "/json/db514_availableCG.json",
			        dataType: "json",
			        success: function (data) {
			            $('#availableCG').find('option').remove().end();
			            $.each(data, function (i, obj) {
			                var divData = "<option value=" + obj.cgUserName + ">" + obj.cgName + " (" + obj.cgUserName + ")</option>";
			                $(divData).appendTo('#availableCG');
			            });
			        }
			    });

			    formSubmitHandler = function () {
			        assignToAvailableCG(request);
			    };

			    $("#assignRequest").dialog("open");
			};

			var assignToAvailableCG = function (request) {
			    alert(request.RequestId + ", " + $("#availableCG").val());
			    $.ajax({
                    type: "POST",
			        url: "",
			        data: {
			            reqId: request.RequestId,
			            cgUserId: $("#availableCG").val()
			        },
			        success: function (data) {
			            alert("Request assigned successfully");
			            $("#jsGrid").jsGrid("refresh");
			        },
			        error: function () {
			            alert("Could not assign request");
			        }
			    });

			    $("#assignRequest").dialog("close");
			};
		});
        
	</script>
    
</body>
</html>


