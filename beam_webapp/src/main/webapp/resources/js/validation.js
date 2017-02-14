$().ready(function() {
	
	$("#username_err").hide();
	$("#firstname_err").hide();
	// validate sign-up form on key-up and submit

	var validator = $("#sign-up").validate({
		rules : {
			username : {
				required : true,
				minlength : 4,
			},
			firstname : {
				required : true,

			},
			lastname : {
				required : true,
			},
			password : {
				required : true,
			},
			confirm_password : {
				required : true,
				equalTo : "#password"
			},
			emailid : {
				required : true,
			},
			agree : "required"
		},
		messages : {
			username : {
				required : "Please enter a username",
				minlength : "Your username must consist of atleast 4 characters"
			}, 
			
			firstname : {
				required : "Please enter a first name",	
			},
			
			lastname : {
			required : "Please enter a last name",
			},
		
			password : {
			required : "Please enter a password",
			},
			
			confirm_password : {
			required : "Please enter a password",	
			equalTo : "Password do not match"
			},
			
			emailid : {
			required : "Please enter an email id",	
			},
			
			agree : "Please accept our terms and conditions"
		},
		
		
// errorLabelContainer: '#username_err'
	});
	
});