package com.beam.backend.daoimpl;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.beam.backend.dao.ProductDAO;
import com.beam.backend.entity.Product;

@Repository("productDAO")
public class ProductDAOImpl implements ProductDAO{
	
	@Autowired
	private SessionFactory sessionfactory;

	@Override
	@Transactional
	public List<Product> list() {
		String hql = "from Product";
		Query query = sessionfactory.getCurrentSession().createQuery(hql);
		return query.list();
	}

	@Override
	@Transactional
	public Product get(int id) {
		return sessionfactory.getCurrentSession().get(Product.class, id);
	}

	@Override
	@Transactional
	public boolean addProduct(Product product) {
		try {
			sessionfactory.getCurrentSession().save(product);
			return true;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return false;
		}
		
	}

	@Override
	@Transactional
	public boolean updateProduct(Product product) {
		try {
			sessionfactory.getCurrentSession().update(product);
			return true;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return false;
		}
		
	}

	@Override
	@Transactional
	public boolean deleteProduct(Product product) {
		try {
			sessionfactory.getCurrentSession().delete(product);
			return true;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return false;
		}
		
	}

	@Override
	@Transactional
	public Product getByCategory(int categoryId) {
		return sessionfactory.getCurrentSession().get(Product.class, categoryId);
	}
	

}
