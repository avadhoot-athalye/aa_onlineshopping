package com.beam.backend.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.beam.backend.dao.CartItemDAO;
import com.beam.backend.entity.Cart;
import com.beam.backend.entity.CartItems;

@Repository("cartItemDAO")
public class CartItemDAOImpl implements CartItemDAO {
	
	@Autowired
	SessionFactory sessionfactory;

	@Override
	@Transactional
	public List<CartItems> list(int id) {
		String hql = "from Cart_Items";
		Query query = sessionfactory.getCurrentSession().createQuery(hql);
		return query.list();
		
	}

	@Override
	@Transactional
	public CartItems getCartItem(int id) {
		return sessionfactory.getCurrentSession().get(CartItems.class, id);
	}

	@Override
	@Transactional
	public boolean addCartItems(CartItems cartItems) {
		try {
			sessionfactory.getCurrentSession().persist(cartItems);
			return true;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return false;
		}
		
	}

	@Override
	@Transactional
	public boolean updateCartItems(CartItems cartItems) {
		try {
			sessionfactory.getCurrentSession().update(cartItems);
			return true;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return false;
		}
		
	}

	@Override
	@Transactional
	public boolean deleteCartItems(CartItems cartItems) {
		try {
			sessionfactory.getCurrentSession().delete(cartItems);
			return true;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return false;
		}
		
	}

	@Override
	public CartItems getByProductId(int productId, int cartId) {
		
		return null;
	}

	@Override
	public boolean existingCartItem(int productId, int cartId) {
		// TODO Auto-generated method stub
		return false;
	}
	

}
