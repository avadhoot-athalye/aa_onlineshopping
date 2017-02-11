package com.beam.backend.daoimpl;

import javax.persistence.NoResultException;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.beam.backend.dao.AddressDAO;
import com.beam.backend.dao.UserDAO;
import com.beam.backend.entity.Address;
import com.beam.backend.entity.User;

@Repository("addressDAO")
public class AddressDAOImpl implements AddressDAO {
	
	@Autowired
	User user;
	
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	Address address;
	
	@Autowired
	private SessionFactory sessionFactory;

	
	@Override
	@Transactional
	public Address getAddress(int id) {
		return sessionFactory.getCurrentSession().get(Address.class, id);
	}

	@Override
	@Transactional
	public boolean addAddress(Address address) {
		try {
			sessionFactory.getCurrentSession().persist(address);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	@Transactional
	public boolean updateAddress(Address address) {
		try {
			sessionFactory.getCurrentSession().update(address);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}

	@Override
	@Transactional
	public boolean deleteAddress(Address address) {
		try {
			sessionFactory.getCurrentSession().delete(address);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}

	@Override
	@Transactional

	public Address getByUserId(int userId) {
		try {
		String hql = "From Address where user.id =:userId";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter("userId", userId);
		
		return (Address) query.getSingleResult();
		} catch (NoResultException nre) {
			nre.printStackTrace();
		return null;
		}
		
	}
	 

}
