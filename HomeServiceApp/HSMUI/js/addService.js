$(document).ready(function () {
    $("#addService").click(function (e) {
        e.preventDefault();
		var serviceName = $("#serviceName").val().trim();
		var serviceDesc = $("#serviceDesc").val().trim();
		var serviceStatus = $("input:radio[name=serviceStatus]:checked").val();
		
		if (serviceName == '') {
			$("#serviceName").css("border","2px solid red");
			$("#serviceName").css("box-shadow","0 0 3px red");
		}
		if (serviceDesc == '') {
			$("#serviceDesc").css("border","2px solid red");
			$("#serviceDesc").css("box-shadow","0 0 3px red");
		} 
		if (serviceName != '' && serviceDesc != '' && serviceStatus!='') {

		    var postData = new Object();

		    postData.serviceName = serviceName;
		    postData.serviceDec = serviceDesc;
		    postData.serviceStatus = serviceStatus;

			
			$.ajax({
				type: "POST",
				url: "/api/service/addservice",
				data: postData,
				contentType: "application/json; charset=utf-8",
				success: function (result) {
					if (result) {
					    location.reload();
					    //window.location = "AdminDashboard.aspx";
					}
				},
				error: function (msg) { alert(msg); }
			}); 
		}
	});
});