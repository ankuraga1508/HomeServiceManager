<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="Request a service here">
    <meta name="author" content="IanP">
    <link rel="icon" href="images/favicon.jpg">
    <title>Request Service</title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/SimpleForm.css" rel="stylesheet">
    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="assets/js/ie-emulation-modes-warning.js"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/jquery-ui-1.12.1/jquery-ui.min.js"></script>
    <link href="js/jquery-ui-1.12.1/jquery-ui.min.css" rel="stylesheet">
</head>
<body>
    <div id="header">
        <h1>Request Service</h1>
    </div>
    <div class="container" id="fields">
        <form>
            <ul>
                <li>
                    <label for="startDate">Start Date</label>
                    <input type="text" id="startDate" name="startDate" required/>
                </li>
                <li>
                    <label for="startTime">Start Time</label>
                    <div class="inputGroup">
                        <select id="startHour">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                        </select>
                        <select id="startMinutes">
                            <option value="00">00</option>
                            <option value="30">30</option>
                        </select>
                        <select id="startAMPM">
                            <option value="AM">AM</option>
                            <option value="PM">PM</option>
                        </select>
                    </div>
                </li>
                <li>
                    <label for="endTime">End Date</label>
                    <input type="text" id="endDate" name="endDate" required/>
                </li>
                <li>
                    <label for="endTime">End Time</label>
                    <div class="inputGroup">
                        <select id="endHour">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                        </select>
                        <select id="endMinutes">
                            <option value="00">00</option>
                            <option value="30">30</option>
                        </select>
                        <select id="endAMPM">
                            <option value="AM">AM</option>
                            <option value="PM">PM</option>
                        </select>
                    </div>
                </li>
                <li>
                    <label for="comments">Comments</label>
                    <textarea id="comments" name="comments" class="inputGroup"></textarea>
                </li>
            </ul>
            <button type="submit" id="request" name="request">Submit Request</button>
            <button id="request-cancel">Cancel</button>
        </form>
    </div>
    <script>
    $(function() {
        $("#startDate").datepicker({
            dateFormat: "yy-mm-dd"
        });
        $("#endDate").datepicker({
            dateFormat: "yy-mm-dd"
        });
    });</script>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="assets/js/ie10-viewport-bug-workaround.js"></script>
    <script src="js/requestService.js"></script>
</body>
</html>
