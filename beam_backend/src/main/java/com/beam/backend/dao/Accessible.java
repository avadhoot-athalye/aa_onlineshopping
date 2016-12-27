package com.beam.backend.dao;

import java.util.List;

import com.beam.backend.entity.Product;

public interface Accessible {
	
	List<Product> list();
	Product get (int id);
	boolean add (Product product);
}
