$.validator.setDefaults({
    errorElement: 'span',
    errorClass: 'help-block',
    errorPlacement: function(error, element) {
        if(element.parent('.input-group').length) {
            error.insertAfter(element.parent());
        } else {
            error.insertAfter(element);
        }
    }
});

$().ready(function() {
	
	
	
	$("#err_username").hide();
	$("#err_firstname").hide();
	$("#err_lastname").hide();
	$("#err_password").hide();
	$("#err_rePassword").hide();
	$("#err_emailid").hide();
	$("#err_check").hide();
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
	});
	
});