package com.beam.webapp.webflow;

import java.security.Principal;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.hibernate.Hibernate;
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
	
	@Autowired
	HttpSession session;
	
	public OrderBean initFlow() {	
		user = userDAO.getbyUserName(SecurityContextHolder.getContext().getAuthentication().getName());
		orderBean.setCart(user.getCart());
		orderBean.setCartItems(user.getCart().getCartItems());
		address = addressDAO.getByUserId(user.getId());
		address = (address == null)? new Address() : address;
		
		orderBean.setAddress(address);
		orderBean.setUser(user);
		return orderBean;
	}
	
	public String updateAddress(OrderBean orderBean) {
		
		user = orderBean.getUser();
		if(user.getId() != 0) {
			userDAO.updateUser(user);
		}
		address = orderBean.getAddress();
		orderBean.setUser(user);
		address.setUser(user);
		if(address.getId() == 0) {
			addressDAO.addAddress(address);
		}
		addressDAO.updateAddress(address);
		orderBean.setAddress(address);
		
		return "success";
		
	}
	
	public String updateCart(OrderBean orderBean) {
		
		user = orderBean.getUser();
		cart = user.getCart();
		Hibernate.initialize(cart.getCartItems());
		Set<CartItems> cartItems = cart.getCartItems();
		for (CartItems deleteItems : cartItems) {
			cartItemDAO.deleteCartItems(deleteItems);
		}
		//cart.setCartItems(cartItems);
		cartDAO.updateGrandTotal(cart);
		cartDAO.updateCart(cart);
		user.setCart(cart);
		session.setAttribute("noOfCartItems", cartItems.size());
		return "success";
		
	}
	
}
