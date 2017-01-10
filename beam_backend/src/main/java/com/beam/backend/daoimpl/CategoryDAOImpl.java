package com.beam.backend.daoimpl;

import java.util.List;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.beam.backend.dao.CategoryDAO;
import com.beam.backend.entity.Category;

@Repository ("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO{
	
	@Autowired
	private SessionFactory sessionfactory;

	@Override
	@Transactional
	public List<Category> list() {
		String hql = "from Category";
		Query query = sessionfactory.getCurrentSession().createQuery(hql);
		return query.list();
	}

	@Override
	@Transactional
	public Category getCategory(int id) {
		return sessionfactory.getCurrentSession().get(Category.class, id);
	}

	@Override
	@Transactional
	public boolean addCategory(Category category) {
		try {
			sessionfactory.getCurrentSession().persist(category);
			return true;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return false;
		}
		
	}

	@Override
	@Transactional
	public boolean updateCategory(Category category) {
		try {
			sessionfactory.getCurrentSession().update(category);
			return true;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return false;
		}
	}

	@Override
	@Transactional
	public boolean deleteCategory(Category category) {
		try {
			sessionfactory.getCurrentSession().delete(category);
			return true;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return false;
		}
		
	}

}
