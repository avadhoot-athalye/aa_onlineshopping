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
		String hql = "from CartItems where cart.id = :cartId";
		Query query = sessionfactory.getCurrentSession().createQuery(hql);
		query.setParameter("cartId", id);
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
			sessionfactory.getCurrentSession().save(cartItems);
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
	@Transactional
	public CartItems getByProductId(int productId, int cartId) {	
		String hql = "from CartItems where product.product_id = :productId and cart.id = :cartId";
		Query query = sessionfactory.getCurrentSession().createQuery(hql);
		query.setParameter("productId", productId);
		query.setParameter("cartId", cartId);
		List<CartItems> cartItems = query.getResultList();
		if(cartItems != null && !cartItems.isEmpty()) {
			return cartItems.get(0);
		}
		return null;
	}

	@Override
	@Transactional
	public boolean existingCartItem(int productId, int cartId) {
		String hql = "from CartItems where cart.id = :cartId and product.product_id = :productId";
		Query query = sessionfactory.getCurrentSession().createQuery(hql);
		query.setParameter("productId", productId);
		query.setParameter("cartId", cartId);
		if(query.list().isEmpty()) {
			return false;
		} else {
			return true;
		}
		
	}
	

}
