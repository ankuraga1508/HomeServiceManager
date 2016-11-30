
function logout() {
	if (sessionStorage && sessionStorage.getItem('name')) {
	    sessionStorage.removeItem('UserId');
	}
	window.location = "Default.aspx";
}
