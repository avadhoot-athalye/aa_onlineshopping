package com.beam.webapp.controller;

import java.security.Principal;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.beam.backend.dao.CartDAO;
import com.beam.backend.dao.CartItemDAO;
import com.beam.backend.dao.ProductDAO;
import com.beam.backend.dao.UserDAO;
import com.beam.backend.entity.Cart;
import com.beam.backend.entity.CartItems;
import com.beam.backend.entity.Product;
import com.beam.backend.entity.User;

@Controller
@RequestMapping(value = { "/user/cart" })
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

	@Autowired
	CartItems cartItems;

	@Autowired
	CartItemDAO cartItemDAO;
	
	@Autowired
	HttpSession httpSession;

	/*
	 * Method to access the cart page
	 */
	@RequestMapping(value = { "/" })
	public ModelAndView cart(Principal principal) {

		ModelAndView mv = new ModelAndView("page");
		user = userDAO.getbyUserName(principal.getName());
		List<CartItems> cartItems = cartItemDAO.list(user.getCart().getId());
		mv.addObject("cartItemsIsEmpty", cartItems.isEmpty());
//		mv.addObject("noOfCartItems", cartItems.size());
		httpSession.setAttribute("noOfCartItems", cartItems.size());
		mv.addObject("cartItem", cartItems);
		mv.addObject("cartItems", new CartItems());
		mv.addObject("cart", cartDAO.getCart(user.getId()));
		mv.addObject("title", "cart");
		mv.addObject("ifUserClickedCart", true);
		return mv;
	}
	/*
	 * Method for fetching product by its id and add it in cart
	 */

	@RequestMapping(value = { "/add/{id}" })
	public String addCartItem(@PathVariable("id") int productId, Principal principal) {

		String url = null;

		user = userDAO.getbyUserName(principal.getName());
		product = productDAO.get(productId);
		Set<CartItems> cartItem = new HashSet<>();
		cart = cartDAO.getCart(user.getId());

		boolean flag = cartItemDAO.existingCartItem(product.getProduct_id(), cart.getId());

		if (product.getProduct_quantity() != 0) {
			// If product does not exist in the cart then add it as a new
			// product
			if (flag != true) {
				cartItems.setProduct(product);
				cartItems.setQuantity(1); // default quantity
				product.setProduct_quantity(product.getProduct_quantity() - 1);
				cartItems.setPrice(product.getProduct_price());
				cartItems.setTotalPrice(cartItems.getPrice() * cartItems.getQuantity());
				cartItems.setCart(cart);
				cartItem.add(cartItems);
				cartItemDAO.addCartItems(cartItems);
				productDAO.updateProduct(product);
				cartDAO.updateGrandTotal(cart);
//				cart.setCartItems(cartItem);
//				cart.setUser(user);
				cartDAO.updateCart(cart);
				url = "redirect:/user/cart/?op=add&status=success";
			} else {
				// If product already exist increment quantity by 1
				CartItems existItem = cartItemDAO.getByProductId(product.getProduct_id(), cart.getId());
				existItem.setQuantity(existItem.getQuantity() + 1);
				productDAO.updateProduct(product);
				existItem.setTotalPrice(existItem.getTotalPrice() + product.getProduct_price());
				cartItemDAO.updateCartItems(existItem);
				cartDAO.updateGrandTotal(cart);			
				cartDAO.updateCart(cart);
				
				url = "redirect:/user/cart/?op=add&status=success";
			}
		} else {
			url = "redirect:/user/cart?op=add&status=failure";
		}
		return url;
	}

	@RequestMapping(value = { "/delete/{id}" })

	public String deleteCartItem(@PathVariable("id") int id, Principal principal) {

		String url = null;
		user = userDAO.getbyUserName(principal.getName());
		if (id != 0) {
			cart = cartDAO.getCart(user.getId());
			cartItems = cartItemDAO.getCartItem(id);
			product = productDAO.get(cartItems.getProduct().getProduct_id());
			product.setProduct_quantity(product.getProduct_quantity() + cartItems.getQuantity());
			productDAO.updateProduct(product);
			cartItemDAO.deleteCartItems(cartItems);
			cartDAO.updateGrandTotal(cart);
			cartDAO.updateCart(cart);
			
			return url = "redirect:/user/cart/?op=delete&status=success";
		} else {
			return url = "redirect:/user/cart/?op=delete&status=failure";
		}
	}
	
	@RequestMapping(value={"/update"}, method = RequestMethod.POST)
	
	public String updateCartItem(@ModelAttribute CartItems cartItems, HttpServletRequest request) {
		
		String url = null;
		int quantity = cartItems.getQuantity();		//quantity demanded by user
		cartItems = cartItemDAO.getCartItem(cartItems.getId());		//fetching the cart item that needs to be updated by its id
		int existingQuantity = cartItems.getQuantity();		//number of quantities user already had
		int changeQuantity = existingQuantity - quantity;	//difference between quantity user had and he demanded - answer is negative
		product = productDAO.get(cartItems.getProduct().getProduct_id());	//fetching the product that needs to be updated
		if(product.getProduct_quantity() > quantity) {	//if stock is more than demanded quantity
			cartItems.setQuantity(quantity);			//updating cart item quantity
			cartItems.setTotalPrice(cartItems.getPrice() * cartItems.getQuantity());	//changing total price of product
			cartItemDAO.updateCartItems(cartItems);
			product.setProduct_quantity(product.getProduct_quantity() + changeQuantity);	//changing product stock
			productDAO.updateProduct(product);	
			cart = user.getCart();
			cartDAO.updateGrandTotal(cart);
			cartDAO.updateCart(cart);
			return url = "redirect:/user/cart/?op=success";
		} else {
			return url = "redirect:/user/cart/?op=fail";
		}
	
	}
}
