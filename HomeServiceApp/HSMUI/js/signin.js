$(document).ready(function () {
	$("#userLogin").click(function () {
		var username = $("#username").val().trim();
		var password = $("#password").val().trim();
		
		if ( username == '') {
			$('input[type="text"]').css("border","2px solid red");
			$('input[type="text"]').css("box-shadow","0 0 3px red");
		}
		if (password == '') {
			$('input[type="password"]').css("border","2px solid red");
			$('input[type="password"]').css("box-shadow","0 0 3px red");
		} 
		if (username != '' && password != '') {
			var postData = JSON.stringify({ 
				"username": username, 
				"password": password 
			});
			alert(postData);
			$.ajax({
				type: "POST",
				url: "LoginPageForLearn.aspx/MyMethod",
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