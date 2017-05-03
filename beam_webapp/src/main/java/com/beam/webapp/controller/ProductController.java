package com.beam.webapp.controller;

import java.security.Principal;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.beam.backend.dao.CartDAO;
import com.beam.backend.dao.CartItemDAO;
import com.beam.backend.dao.CategoryDAO;
import com.beam.backend.dao.ProductDAO;
import com.beam.backend.dao.UserDAO;
import com.beam.backend.entity.CartItems;
import com.beam.backend.entity.Category;
import com.beam.backend.entity.Product;
import com.beam.backend.entity.User;


/*
 * This controller is used only for fetching the data and not for displaying any view
 */
	@Controller
	@RequestMapping(value = "/data/product")
	public class ProductController {

	// /*
	// * Product data can be fetch using Accessible implement class so we will
	// * autowire it here
	// */

	@Autowired
	private ProductDAO accessible;

	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private CartItemDAO cartItemDAO;
	
	@Autowired
	private CartDAO cartDAO;
	
	@Autowired
	private UserDAO userDAO;
	
	@RequestMapping(value = "/list")
	public @ResponseBody List<Product> productList() { // need to receive response
		return accessible.list();
	}

	@RequestMapping(value = "/category/list")
	public @ResponseBody List<Category> categoryList() { // need to receive response
		return categoryDAO.list();
	}
	
	@RequestMapping(value = "/cartItems/list")
	public @ResponseBody List<CartItems> cartItemsList(Principal principal) {// need to receive response
		System.out.println("Fetching cartItems");
		User user = userDAO.getbyUserName(principal.getName());
		List<CartItems> cartItems = cartItemDAO.list(user.getCart().getId());
		return cartItems;
	}
}
