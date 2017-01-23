package com.beam.webapp.webflow;





import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import com.beam.backend.entity.User;


@Component
public class UserHandler {
	
	@Autowired
	private User user;

	public User initFlow() {
		return new User();
	}
	
	public String addUser(User user) {
		
		user.setUsername(user.getUsername());
		user.setPassword(user.getPassword());
		user.setConfirm_password(user.getConfirm_password());
		user.setEmailid(user.getEmailid());
		
		return "success";
	}
}
