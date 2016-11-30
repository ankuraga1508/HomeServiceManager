$(document).ready(function () {
    $("#userLogin").click(function (e) {
        e.preventDefault();
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
		    var postData = {
		        username: username,
		        loginpwd: password
		    };
			$.ajax({
				type: "POST",
				url: "/api/user/userlogin",
				data: postData,
				success: function (result) {
				    alert(result);
				    if (result != 'null') {
				        var r = jQuery.parseJSON(result);
				        var UserRoleId = r.UserRoleId;
				        var UserId = r.UserId;
				        window.sessionStorage.setItem("UserId", UserId);
				        if (UserRoleId === 1) {
				            window.location = "SeniorDashboard.aspx";
				        } else if (UserRoleId === 2) {
				            window.location = "CaregiverDashboard.aspx";
				        } else if (UserRoleId === 3) {
				            window.location = "AdminDashboard.aspx";
				        };
					} else {
						$('input[type="text"]').css("border","2px solid red");
						$('input[type="text"]').css("box-shadow","0 0 3px red");
						$('input[type="password"]').css("border","2px solid red");
						$('input[type="password"]').css("box-shadow","0 0 3px red");
					}
				},
				error: function (msg) { alert(msg); }
			}); 
		}
	});
	
    $("#userReg").click(function (e) {
        e.preventDefault();
		window.location = "Registration.aspx";
	});
});