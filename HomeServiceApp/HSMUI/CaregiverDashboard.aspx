<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="Dashboard for caregiver">
    <meta name="author" content="IanP">
    <link rel="icon" href="images/favicon.jpg">

    <title>Caregiver Dashboard</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link type="text/css" rel="stylesheet" href="js/jsgrid-1.5.2/dist/jsgrid.min.css" />
	<link type="text/css" rel="stylesheet" href="js/jsgrid-1.5.2/dist/jsgrid-theme.min.css" />

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/adminStyle.css" rel="stylesheet"><!--CHANGE? -->

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="assets/js/ie-emulation-modes-warning.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="js/jsgrid-1.5.2/dist/jsgrid.min.js"></script>

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
            <li><a href="#">Profile</a></li>
            <li><a href="#">Logout</a></li>
          </ul>
        </div>
      </div>
    </nav>

    <!--
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-12 col-sm-offset-0 col-md-12 col-md-offset-0 main">
          <h1 class="page-header">Assigned Requests</h1>

		  <div id="jsGrid"></div>
        </div>
      </div>
    </div>
    -->

    <div id="jsGrid" name="jsGrid" class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 "></div>
    <div id="assignedRequests">
        <form id="detailsForm">
            <div class="details-form-field">
                <label for="reqName">Requester Name:</label>
                <input id="reqName" name="reqName" type="text" disabled/>
                <input type="hidden" id="reqId" />
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
                <button type="submit" id="accept">Accept</button>
                <button type="submit" id="complete">Complete</button>
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
				deleteConfirm: "Do you really want to decline this request?",
				noDataContent: "No assigned service requests at the moment",
				loadMessage: "Fetching Assigned Requests...",
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
				rowClick: function(args) {
				    showAssignedReq(args.item);
				},
				fields: [
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

			$("#assignedRequests").dialog({
			    autoOpen: false,
			    width: 450,
			    close: function () {
			        $("#detailsForm").validate().resetForm();
			        $("#detailsForm").find(".error").removeClass("error");
			    }
			});

            /*
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
            */

			//var formSubmitHandler = $.noop;

			var showAssignedReq = function (request) {
			    $("#reqId").val(request.RequestId);
			    $("#reqName").val(request.Name);
			    $("#reqLocation").val(request.Location);
			    $("#reqDate").val(request.Date);
			    $("#reqTimeFrom").val(request.From);
			    $("#reqTimeTo").val(request.To);

			    //formSubmitHandler = function () {
			    //    respondToRequest(request);
			    //};

			    $("#assignedRequests").dialog("open");
			};

			var respondToRequest = function (request) {
			    alert(request.RequestId);
			    $.ajax({
                    type: "POST",
			        url: "",
			        success: function (data) {
			            alert("Request accepted successfully");
			            $("#jsGrid").jsGrid("refresh");
			        },
			        error: function () {
			            alert("Could not accept request");
			        }
			    });

			    $("#assignedRequests").dialog("close");
			};

			var closeRequest = function (request) {
			    alert(request.RequestId);
			    $.ajax({
			        type: "POST",
			        url: "",
			        success: function (data) {
			            alert("Request closed successfully");
			            $("#jsGrid").jsGrid("refresh");
			        },
			        error: function () {
			            alert("Could not close request");
			        }
			    });

			    $("#assignedRequests").dialog("close");
			};
			$('#accept').click(function (request) {
			    respondToRequest(request);
			});
			$('#complete').click(function (request) {
			    closeRequest(request);
			});
		});
	</script>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/caregiverDashboardController.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="assets/js/vendor/holder.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
