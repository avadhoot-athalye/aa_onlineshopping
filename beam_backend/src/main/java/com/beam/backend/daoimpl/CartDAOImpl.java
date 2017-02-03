	package com.beam.backend.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.beam.backend.dao.CartDAO;
import com.beam.backend.dao.CartItemDAO;
import com.beam.backend.dao.UserDAO;
import com.beam.backend.entity.Cart;
import com.beam.backend.entity.CartItems;
import com.beam.backend.entity.User;

@Repository("cartDAO")
public class CartDAOImpl implements CartDAO{
	
	@Autowired
	User user;
	
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	CartItemDAO cartItemDAO;
	
	@Autowired
	Cart cart;

	@Autowired
	SessionFactory sessionfactory;
	
	@Override
	@Transactional
	public Cart getCart(int userId) {
		user = userDAO.getUser(userId);
		int cartId = user.getCart().getId();
		return sessionfactory.getCurrentSession().get(Cart.class, cartId);
	}

	@Override
	@Transactional
	public boolean updateCart(Cart cart) {
		try {
			sessionfactory.getCurrentSession().update(cart);
			return true;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return false;
		}
		
	}

	@Override
	@Transactional
	public void updateGrandTotal(Cart cart) {
		double grandTotal = 0;
		
		List<CartItems> listOfCartItems = cartItemDAO.list(user.getCart().getId());
		cart.setNumberOfItems(listOfCartItems.size());
		for (CartItems cartItems : listOfCartItems) {
			grandTotal = grandTotal + cartItems.getTotalPrice();
		}
		cart.setGrandTotal(grandTotal);
	}

}
