$(document).ready(function () {
    $("#register").click(function (e) {
    e.preventDefault();
    var firstName = $("#firstName").val().trim();
    var lastName = $("#lastName").val().trim();
    var username = $("#username").val().trim();
    var password = $("#password").val().trim();
    var contactNum = $("#contactNum").val().trim();
    var addressLine1 = $("#addressLine1").val().trim();
    var addressLine2 = $("#addressLine2").val().trim();
    var sex = $("#sex").val().trim();

    function Field(value, id) {
      this.value = value;
      this.id = id;
    }

    var required = [];
    required.push(new Field(firstName, "firstName"));
    required.push(new Field(lastName, "lastName"));
    required.push(new Field(username, "username"));
    required.push(new Field(password, "password"));
    required.push(new Field(contactNum, "contactNum"));
    required.push(new Field(addressLine1, "addressLine1"));
    required.push(new Field(sex, "sex"));

    var completeForm = 1;

    for (var i = 0; i < required.length; i++) {
      if (required[i].value === '') {
          $("#" + required[i].id).css("border", "2px solid red");
          $("#" + required[i].id).css("box-shadow", "0 0 3px red");
        completeForm = 0;
      }
    }

    if (completeForm === 1) {
        var postData = "UserName=" + username + "&FirstName=" + firstName + "&LastName=" + lastName +
        "&LoginPassword=" + password + "&UserMobile=" + contactNum + "&Address=" + addressLine1 + " " + addressLine2 +
        "&Sex=" + sex + "&UserRoleId=" + "1" + "&CreatedBy=" + "1" + "&ModifiedBy=" + "1" + "&IsActive=" + "1" + "&ModifiedOn=" + "";
      alert(postData);
			$.ajax({
				type: "POST",
				url: "/api/user/PostAddUser",
				data: postData,
				contentType: "application/x-www-form-urlencoded; charset=utf-8",
				success: function (result) {
				    alert(result + " result");
					if (result) {
					    alert('success');
					    window.location = "SeniorDashboard.aspx";
					}
				},
				error: function (msg) {
				    alert("fail");
				    alert(msg);
				    return false;
				}
			});
    }
  });
});
