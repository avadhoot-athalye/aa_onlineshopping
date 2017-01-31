package com.beam.webapp.controller;

import java.security.Principal;
import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.beam.backend.dao.CartDAO;
import com.beam.backend.dao.ProductDAO;
import com.beam.backend.dao.UserDAO;
import com.beam.backend.entity.Cart;
import com.beam.backend.entity.CartItems;
import com.beam.backend.entity.Product;
import com.beam.backend.entity.User;

@Controller
@RequestMapping(value={"/user/cart"})
public class CartController {
	
	@Autowired
	Product product;
	
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	User user;
	
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	Cart cart;
	
	@Autowired
	CartDAO cartDAO;
	
	/*
	 * Method for fetching product by its id and add it in cart
	 */
	
	@RequestMapping (value={"/add/{id}"}, method = RequestMethod.GET)
	public void addCartItem(@PathVariable("id") int productId, Principal principal) {
		
		user = userDAO.getbyUserName(principal.getName());
		product = productDAO.get(productId);
		Set<CartItems>cartItems = new HashSet<>();
		
		if(cart == null) {
			cart = new Cart();
		} else {
			cart = cartDAO.getCart(user.getId());
		}
		
	}

}
