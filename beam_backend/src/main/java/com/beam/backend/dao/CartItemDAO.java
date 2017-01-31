package com.beam.backend.dao;

import java.util.List;

import com.beam.backend.entity.CartItems;

public interface CartItemDAO {

	List<CartItems> list(int id);
	CartItems getCartItem(int id);
	boolean addCartItems(CartItems cartItems);
	boolean updateCartItems(CartItems cartItems);
	boolean deleteCartItems(CartItems cartItems);
	CartItems getByProductId(int productId, int cartId);
	boolean existingCartItem(int productId, int cartId);
}
