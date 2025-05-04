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
	@Transactional
	public Staff create(Staff staff) {
	    em.persist(staff);
	    em.flush();
	    return staff;
	}

	    @Override
	    @Transactional
	    public boolean delete(int id) {
	        Staff staff = em.find(Staff.class, id);
	        if (staff != null) {
	            em.remove(staff);
	            return true;
	        }
	        return false;
	    }
		
	    @Override
	    @Transactional
	    public Staff update(Staff staff) {
	        return em.merge(staff);
	    }
		@Override
		public List<Staff> sortByTitle(String sort) {
			String jpql = "SELECT s FROM Staff s ORDER BY s.jobTitle";
			return em.createQuery(jpql, Staff.class).getResultList();
		}
		@Override
		public List<Staff> sortById(String sort) {
			String jpql = "SELECT s FROM Staff s ORDER BY s.id";
			return em.createQuery(jpql, Staff.class).getResultList();
		}
		@Override
		public List<Staff> sortByName(String sort) {
			String jpql = "SELECT s FROM Staff s ORDER BY s.lastName";
			return em.createQuery(jpql, Staff.class).getResultList();
		}
}
