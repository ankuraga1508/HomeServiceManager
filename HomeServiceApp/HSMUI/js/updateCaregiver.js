$(document).ready(function () {
  $("#updateCaregiver").click(function () {
    var originalUsername = $("#originalUsername").val().trim();
    var firstName = $("#firstName").val().trim();
    var lastName = $("#lastName").val().trim();
    var username = $("#username").val().trim();
    var password = $("#password").val().trim();

    if (originalUsername == '') {
      $("#originalUsername").css("border", "2px solid red");
      $("#originalUsername").css("box-shadow","0 0 3px red");
    }
    if (firstName == '') {
      $("#firstName").css("border", "2px solid red");
      $("#firstName").css("box-shadow","0 0 3px red");
    }
    if (lastName == '') {
      $("#lastName").css("border", "2px solid red");
      $("#lastName").css("box-shadow","0 0 3px red");
    }
    if (username == '') {
      $("#username").css("border", "2px solid red");
      $("#username").css("box-shadow","0 0 3px red");
    }
    if (password == '') {
      $("#password").css("border", "2px solid red");
      $("#password").css("box-shadow","0 0 3px red");
    }
    if(originalUsername != '' && firstName != '' && lastName != '' && username != '' && password != '') {
      var postData = JSON.stringify({
        "originalUsername": originalUsername,
        "username": username,
        "firstName": firstName,
        "lastName": lastName,
        "password": password
      });

      $.ajax({
        type: "POST",
        url: "",
        data: postData,
        contentType: "application/json; charset=utf-8",
        success: function (result) {
          if (result.d) {
            alert('success');
                  //TODO go to new page
          }
        },
        error: function (msg) { alert(msg); }
      });
    }
  });
});
