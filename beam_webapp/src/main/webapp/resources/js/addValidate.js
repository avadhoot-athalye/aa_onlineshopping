$.validator.setDefaults({
	errorElement : 'span',
	errorClass : 'help-block',
	errorPlacement : function(error, element) {
		if (element.parent('.input-group').length) {
			error.insertAfter(element.parent());
		} else {
			error.insertAfter(element);
		}
	}
});

$(function() {
	// Validation for updateDetails page
	console.log('test');
	jQuery.validator.addMethod("lettersonly", function(value, element) {
		  return this.optional(element) || /^[a-z]+$/i.test(value);
		}); 

	$("#updateDetails").validate();

	$("#firstname").rules("add", {
		required : true,
		messages : {
			required : 'Please provide first name!'
		},
		lettersonly : true,
		messages : {
			lettersonly : 'Invalid first name'
		}
	});
	$("#lastname").rules("add", {
		required : true,
		messages : {
			required : 'Please provide last name!'
		}
	});
	$("#addressLine1").rules("add", {
		required : true,
		messages : {
			required : 'Please provide address line 1!'
		},
		maxlength : 50,
		messages : {
			maxlength : 'Address is way too long!'
		}
	});
	$("#addressLine2").rules("add", {
		required : true,
		messages : {
			required : 'Please provide address line 2!'
		},
		maxlength : 50,
		messages : {
			maxlength : 'Address is way too long!'
		}
	});
	$("#landmark").rules("add", {
		required : true,
		messages : {
			required : 'Please provide land mark!'
		},
		maxlength : 50,
		messages : {
			maxlength : 'land mark is way too long!'
		}
	});
	$("#city").rules("add", {
		required : true,
		messages : {
			required : 'Please provide city!'
		}
	});
	$("#state").rules("add", {
		required : true,
		messages : {
			required : 'Please provide state'
		}
	});
	$("#country").rules("add", {
		required : true,
		messages : {
			required : 'Please provide country'
		}
	});
	$("#pincode").rules("add", {
		required : true,
		messages : {
			required : 'Please provide pincode!'
		},
		digits : true,
		messages : {
			digits : 'Please provide a valid pin code'
		},
		maxlength : 10,
		messages : {
			maxlength : 'pincode is way too long!'
		}
	});
	$("#mobilenumber").rules("add", {
		required : true,
		messages : {
			required : 'Please provide mobile number!'
		},
		minlength : 10,
		messages : {
			minlength : 'Mobile number should be of 10 digits!'
		},
		digits : true,
		messages : {
			digits : 'Please provide a valid mobile number'
		}
	});
});