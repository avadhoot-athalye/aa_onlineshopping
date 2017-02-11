package com.beam.webapp.webflow;

import java.io.Serializable;
import java.util.Set;

import org.springframework.stereotype.Component;

import com.beam.backend.entity.Address;
import com.beam.backend.entity.Cart;
import com.beam.backend.entity.CartItems;
import com.beam.backend.entity.User;

@Component
public class OrderBean implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 7858541082091995063L;


	private Cart cart;
	private Set<CartItems> cartItems;
	private Address address;
	private User user;
	
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	public Set<CartItems> getCartItems() {
		return cartItems;
	}
	public void setCartItems(Set<CartItems> cartItems) {
		this.cartItems = cartItems;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	
}
