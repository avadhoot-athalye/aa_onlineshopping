package com.beam.webapp.handler;





import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import com.beam.backend.webflow.UserBean;

@Component
public class UserHandler {

	public UserBean initFlow() {
		return new UserBean();
	}
	
	public String validateDetails(UserBean userBean, MessageContext messageContext){
		
		String status = "success";
		if(userBean.getUsername().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("username").defaultText("Username cannot be empty").build());
			status = "failure";
		}
		if(userBean.getPassword().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("password").defaultText("password cannot be empty").build());
			status = "failure";
		}
		if(userBean.getConfirm_password().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("confirm_password").defaultText("please re-enter password").build());
			status = "failure";
		}
		if(!userBean.getConfirm_password().equals(userBean.getPassword())) {
			messageContext.addMessage(new MessageBuilder().error().source("confirm_password").defaultText("password do not match").build());
			status = "failure";
		}
		if(userBean.getEmail().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("email").defaultText("email cannot be empty").build());
			status = "failure";
		}
		if(userBean.isTermsAndConditions() == false) {
			messageContext.addMessage(new MessageBuilder().error().source("termsAndConditions").defaultText("You must agree to terms and conditions").build());
			status = "failure";
		}
		return status;
	}
}
