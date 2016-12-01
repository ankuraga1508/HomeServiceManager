
function logout() {
    if (sessionStorage && sessionStorage.getItem('UserId')) {
	    sessionStorage.removeItem('UserId');
	}
	window.location = "Default.aspx";
}
