package com.beam.webapp.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.beam.backend.dao.CartDAO;
import com.beam.backend.dao.CartItemDAO;
import com.beam.backend.dao.CategoryDAO;
import com.beam.backend.dao.ProductDAO;
import com.beam.backend.dao.UserDAO;
import com.beam.backend.entity.Cart;
import com.beam.backend.entity.CartItems;
import com.beam.backend.entity.Category;
import com.beam.backend.entity.Product;
import com.beam.backend.entity.User;


/*
 * This controller is used only for fetching the data and not for displaying any view
 */
	@RestController
	@RequestMapping(value = "/data/product")
	public class JSONDataController {

	// /*
	// * Product data can be fetch using Accessible implement class so we will
	// * autowire it here
	// */

	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private CartItemDAO cartItemDAO;
	
	@Autowired
	private CartDAO cartDAO;
	
	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	Product product;

	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	User user;

	@Autowired
	Cart cart;
	
	@RequestMapping(value = "/list")
	public @ResponseBody List<Product> productList() { // need to receive response
		return productDAO.list();
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
	
	@RequestMapping(value={"/cart/update/{id}/{quantity}"}, method = RequestMethod.POST)
	public ResponseEntity<CartItems> updateCartItem(@PathVariable("id") int id, @PathVariable("quantity") int quantity, Principal principal) {
		System.out.println("Updating cart item now...!");
		System.out.println(principal.getName());
		CartItems cartItems = cartItemDAO.getCartItem(id);		//fetching the cart item that needs to be updated by its id
		int existingQuantity = cartItems.getQuantity();		//number of quantities user already had
		int changeQuantity = existingQuantity - quantity;	//difference between quantity user had and he demanded - answer is negative
		product = productDAO.get(cartItems.getProduct().getProduct_id());	//fetching the product that needs to be updated
		if(product.getProduct_quantity() > quantity) {	//if stock is more than demanded quantity
			cartItems.setQuantity(quantity);			//updating cart item quantity
			cartItems.setTotalPrice(cartItems.getPrice() * cartItems.getQuantity());	//changing total price of product
			cartItemDAO.updateCartItems(cartItems);
			product.setProduct_quantity(product.getProduct_quantity() + changeQuantity);	//changing product stock
			productDAO.updateProduct(product);	
			cart = userDAO.getbyUserName(principal.getName()).getCart();
			cartDAO.updateGrandTotal(cart);
			cartDAO.updateCart(cart);
		}
		return new ResponseEntity<CartItems>(cartItems, HttpStatus.OK);
	}
}
