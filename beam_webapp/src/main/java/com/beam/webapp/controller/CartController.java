package com.beam.webapp.controller;

import java.security.Principal;
import java.util.HashSet;
import java.util.Set;

import javax.enterprise.inject.New;

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

	/*
	 * Method to access the cart page
	 */
	@RequestMapping(value = { "/" })
	public ModelAndView cart(Principal principal) {

		ModelAndView mv = new ModelAndView("page");
		user = userDAO.getbyUserName(principal.getName());
		mv.addObject("cartItem", cartItemDAO.list(user.getCart().getId()));
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
				cartItems.setTotalPrice(cartItems.getTotalPrice());
				cartItems.setCart(cart);
				cartItem.add(cartItems);
				cartItemDAO.addCartItems(cartItems);
				productDAO.updateProduct(product);
//				cart.setCartItems(cartItem);
//				cart.setUser(user);
				cartDAO.updateCart(cart);
				url = "redirect:/user/cart/?op=add&status=success";
			} else {
				// If product already exist increment quantity by 1
				CartItems existItem = cartItemDAO.getByProductId(product.getProduct_id(), cart.getId());
				cartItems.setQuantity(existItem.getQuantity() + 1);
				product.setProduct_quantity(product.getProduct_quantity() - 1);
				productDAO.updateProduct(product);
				cartItems.setTotalPrice(existItem.getTotalPrice() * product.getProduct_price());
				cartItemDAO.updateCartItems(cartItems);
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
			cartDAO.updateCart(cart);
			return url = "redirect:/user/cart/?op=delete&status=success";
		} else {
			return url = "redirect:/user/cart/?op=delete&status=failure";
		}
	}
}
