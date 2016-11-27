
function InitDealerOffer() {
    alert('hi');
    var firstName = $("#firstName").val().trim();
    var lastName = $("#lastName").val().trim();
    var username = $("#username").val().trim();
    var password = $("#password").val().trim();

    if (firstName == '') {
        $("#firstName").css("border", "2px solid red");
        $("#firstName").css("box-shadow", "0 0 3px red");
    }
    if (lastName == '') {
        $("#lastName").css("border", "2px solid red");
        $("#lastName").css("box-shadow", "0 0 3px red");
    }
    if (username == '') {
        $("#username").css("border", "2px solid red");
        $("#username").css("box-shadow", "0 0 3px red");
    }
    if (password == '') {
        $("#password").css("border", "2px solid red");
        $("#password").css("box-shadow", "0 0 3px red");
    }
    if (firstName != '' && lastName != '' && username != '' && password != '') {

        var postData = new Object();

        postData.username = username;
        postData.firstName = firstName;
        postData.lastName = lastName;
        postData.UserEmail = lastName;
        postData.UserMobile = lastName;
        postData.LoginId = 'vikas';
        postData.LoginPassword = password;
        postData.IsActive = 1;
        postData.CreatedBy = 1;
        postData.UserRoleId = 1;
        postData.UserSSN = 12536363;
       


        $.ajax({
            type: "POST",
            url: "/api/user/postadduser",
            data: postData,
            contentType: "application/x-www-form-urlencoded",
            success: function (result) {
                if (result.d) {
                    alert('success');
                    //TODO go to new page
                }
            },
            error: function (msg) { alert(msg); }
        });
    }
}

$(document).ready(function () {
  $("#addCaregiver").click(function () {

  });
});

