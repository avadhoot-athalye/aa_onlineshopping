package com.beam.backend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import com.beam.backend.dao.Accessible;
import com.beam.backend.entity.Product;

public class ProductDAOImpl implements Accessible{

	public List<Product> list() {
		
		List<Product> products = new ArrayList<>();
		
		products.add(new Product(1, "ABC"));
		products.add(new Product(2, "XYZ"));
		products.add(new Product(3, "PQR"));
		
		return products;
	}

	public Product get(int id) {
		// TODO Auto-generated method stub
		return null;
	}

}
