function validate(form){
		let value = false
		if(form.firstname.value === ""){
			alert("Please fill in your first name");
			form.firstname.focus();
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
	
	function ticker(){
		document.getElementById("dateDisplay").innerHTML = new Date();
	}
	
	setInterval(ticker, 1000);