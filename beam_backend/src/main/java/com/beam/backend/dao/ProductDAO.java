package com.beam.backend.dao;

import java.util.List;

import com.beam.backend.entity.Product;

public interface ProductDAO {
	
	List<Product> list();
	Product get (int id);
	Product get (String name);
	boolean addProduct (Product product);
	boolean updateProduct (Product product);
	boolean deleteProduct (Product product);
	Product getByCategory (int categoryId);
}
