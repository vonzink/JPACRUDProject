package com.skilldistillery.msfg.data;

import java.util.List;

import org.springframework.stereotype.Service;

import com.skilldistillery.msfg.entities.Staff;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

@Service
@Transactional
public class StaffDaoImpl implements StaffDAO {

	@PersistenceContext
	private EntityManager em; 
	
	@Override
	public Staff staffId(int id) {
		return em.find(Staff.class, id); 
		
	}

	@Override
	public List<Staff> findAll() {
		String jpql = "SELECT s FROM Staff s";
		return em.createQuery(jpql, Staff.class).getResultList();
	}

	@Override
	public List<Staff> sortByName(String sort) {
		String jpql = "SELECT s FROM Staff s ORDER BY s.first_name";
		return em.createQuery(jpql, Staff.class).getResultList();
	}

}
