
$(document).ready(function(){
	
	//Getting data from backend
	$.ajax({
		type: "GET",
		url: "api/service/services",
		dataType: "json",
		success: function (data) {
		    var jsonData = JSON.parse(data);
		    $.each(jsonData, function (i, obj) {
				var divData="<option value="+obj.id+">"+obj.serviceName+"</option>";
				$(divData).appendTo('#serviceName');
			});
		}
	});
	
	
	//Sending data to backend
	$("#manageService").click(function (e) {
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

		    var postData = JSON.stringify({
		        "id": id,
				"serviceName": serviceName, 
				"serviceDesc": serviceDesc,
				"serviceStatus": serviceStatus
			});
			alert(postData);
			$.ajax({
				type: "POST",
				url: "/api/service/addservice",
				data: postData,
				contentType: "application/x-www-form-urlencoded; charset=utf-8",
				success: function (result) {
					if (result) {
						alert('success');
					}
				},
				error: function (msg) { alert(msg); }
			}); 
		}
	});
});