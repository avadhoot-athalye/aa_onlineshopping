package com.beam.webapp.webflow;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.beam.backend.dao.UserDAO;
import com.beam.backend.entity.Cart;
import com.beam.backend.entity.User;


@Component
public class UserHandler {

	
	@Autowired
	UserDAO userDAO;

	public User initFlow() {
		return new User();
	}
	
	//Setting the cart while registering user
	public String addUser(User user) {
		Cart cart = new Cart();
		
		cart.setUser(user);
		user.setCart(cart);	
		userDAO.addUser(user);
		
		return "success";
	}
}
