package com.beam.webapp.webflow;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;

import com.beam.backend.dao.AddressDAO;
import com.beam.backend.dao.CartDAO;
import com.beam.backend.dao.CartItemDAO;
import com.beam.backend.dao.UserDAO;
import com.beam.backend.entity.Address;
import com.beam.backend.entity.Cart;
import com.beam.backend.entity.CartItems;
import com.beam.backend.entity.User;

@Component
public class CartHandler {

	@Autowired
	CartItemDAO cartItemDAO;
	
	@Autowired
	CartItems cartItems;
	
	@Autowired
	Cart cart;
	
	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	User user;
	
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	Address address;
	
	@Autowired
	AddressDAO addressDAO;
	
	@Autowired
	OrderBean orderBean;
	
	public OrderBean initFlow() {	
		user = userDAO.getbyUserName(SecurityContextHolder.getContext().getAuthentication().getName());
		orderBean.setCart(user.getCart());
		orderBean.setCartItems(user.getCart().getCartItems());
		address = addressDAO.getByUserId(user.getId());
		orderBean.setAddress(address);
		orderBean.setUser(user);
		return orderBean;
	}
	
	
}
