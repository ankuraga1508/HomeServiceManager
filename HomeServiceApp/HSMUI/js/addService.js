$(document).ready(function () {
	$("#addService").click(function () {
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
			var postData = JSON.stringify({ 
				"serviceName": serviceName, 
				"serviceDesc": serviceDesc,
				"serviceStatus": serviceStatus
			});
			alert(postData);
			$.ajax({
				type: "POST",
				url: "",
				data: postData,
				contentType: "application/json; charset=utf-8",
				success: function (result) {
					if (result.d) {
						alert('success');
					}
				},
				error: function (msg) { alert(msg); }
			}); 
		}
	});
});