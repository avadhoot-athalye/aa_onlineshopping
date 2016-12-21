package com.beam.backend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.beam.backend.dao.Accessible;
import com.beam.backend.entity.Product;

@Repository
public class ProductDAOImpl implements Accessible{
	
	List<Product> products = new ArrayList<>(); 
	{
	
	products.add(new Product(1, "ABC"));
	products.add(new Product(2, "XYZ"));
	products.add(new Product(3, "PQR"));
	
	}

	public List<Product> list() {
		
		return products;
	}

	public Product get(int id) {
		// TODO Auto-generated method stub
		
		for(Product p : products) {
			
			if (p.getId() == id) {
				return p;
			}
		}
		return null;
	}

}
