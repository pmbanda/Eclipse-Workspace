
function validate(form)
{
		let value = false
		if(form.firstname.value === ""){
			alert("Please fill in your first name");
			form.firstname.foccu();
			return value
		}
		if(form.lastname.value === ""){
			alert("Please fill in your last name");
			form.lastname.focus();
			return value
		}
		if(form.email.value === ""){
			alert("Please fill in your email address");
			form.email.focus();
			return value
		}else{
			return value = true
		}
			
		return value
}
	

$( document ).ready(function() {
	
	function ticker(){
		var dateTime = new Date();
		var dateValuePointer = document.getElementById("dateDisplay");
		dateValuePointer.innerHTML = dateTime.toString().substring(0,25);
	}
	
	setInterval(ticker, 1000);
});