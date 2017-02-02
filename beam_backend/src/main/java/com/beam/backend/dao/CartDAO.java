package com.beam.backend.dao;

import com.beam.backend.entity.Cart;

public interface CartDAO {

	Cart getCart(int userId);
	boolean updateCart(Cart cart);
	void updateGrandTotal(Cart cart);
}
