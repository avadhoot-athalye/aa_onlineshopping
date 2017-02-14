$().ready(function() {
// Validation for updateDetails page
	
	$("#updateDetails").validate({
		rules : {
			
			addressLine1 : {
				required : true,
			},
			addressLine2 : {
				required : true,
			},
			landmark: {
				required : true,
			},
			pincode : {
				required : true,
			},
			mobilenumber : {
				required : true,
			},
			
		},
		messages : {
		
			addressLine1 : {
				required : "Please enter address Line 1",	
			},
			
			addressLine2 : {
			required : "Please enter address Line 2",
			},
		
			landmark : {
			required : "Please enter a land mark",
			},
			
			pincode : {
			required : "Please enter a land mark",
			},
			
			mobilenumber : {
			required : "Please enter a password",	
			},
		
		},
	});
});