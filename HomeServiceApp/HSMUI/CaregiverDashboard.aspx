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

    <title>Caregiver Dashboard</title>

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
          <a class="navbar-brand" href="#">Home Service Manager</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#">Profile</a></li>
            <li><a href="javascript:void(0);" onclick="logout();">Logout</a></li>
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
    
    <div id="jsGrid" name="jsGrid" class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 " style="margin-top:50px"></div>
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
            <div class="col-sm-offset-4">
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
				            dataType: "json",
				            url: "/api/request/getrequestbyfilters?caregiverid=1",
				        }).done(function (result) {

				            var resultJson = JSON.parse(result);
				             
				            result = $.grep(resultJson, function (request) {
				                    return (!filter.RequesterId || request.RequesterId.indexOf(filter.RequesterId) > -1)
                                    && (!filter.RequesterName || request.RequesterName.indexOf(filter.RequesterName) > -1)
                                    && (!filter.serviceName || request.serviceName.indexOf(filter.serviceName) > -1)
                                    && (!filter.ScheduleDate || request.ScheduleDate.indexOf(filter.ScheduleDate) > -1)
                                    && (!filter.StartTime || request.StartTime.indexOf(filter.StartTime) > -1)
                                    && (!filter.EndTime || request.EndTime.indexOf(filter.EndTime) > -1)
                                    && (!filter.Address || request.Address.indexOf(filter.Address) > -1);
				                });
				                reqData.resolve(result); 
				        })
				        return reqData.promise();
				    },

				    deleteItem: function (item) {
				        alert(item.id);
				        var postData = "id=" + item.id + "&RequesterId=" + item.RequesterId + "&RoleId=" + item.RoleId +
                            "&CaregiverId=" + item.CaregiverId + "&ServiceId=" + item.ServiceId + "&Status=6" +
				            "&StartTime=" + item.StartTime + "&EndTime=" + item.EndTime + "&Comments=" + item.Comments + "&ModifiedBy=" + item.CaregiverId;

			            return $.ajax({
			            type: "POST",
			            url: "/api/request/postrequest",
			            data: postData,
			            contentType: "application/x-www-form-urlencoded; charset=utf-8",
			            });
			        },
                },

				rowClick: function (args) {
				    showAssignedReq(args.item);
				},
				fields: [
					{ name: "RequesterId", type: "number", width: 10 },
					{ name: "RequesterName", type: "text", width: 20 },
					{ name: "serviceName", type: "text", width: 25 },
					{ name: "ScheduleDate", type: "text", width: 15 },
					{ name: "StartTime", type: "text", width: 15 },
					{ name: "EndTime", type: "text", width: 15 },
					{ name: "Address", type: "text", width: 30 },
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
			            if (data == 'true') {
			                alert("Request accepted successfully");
			                $("#jsGrid").jsGrid("refresh");
			            } else {
			                alert("Could not accept request");
			            }
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
    <script>
        function logout() {
            if (sessionStorage && sessionStorage.getItem('name')) {
                sessionStorage.removeItem('UserId');
            }
            window.location = "Default.aspx";
        }
    </script>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="/js/caregiverDashboardController.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="/js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="/assets/js/vendor/holder.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="/assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
