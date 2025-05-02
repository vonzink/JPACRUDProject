package com.skilldistillery.msfg.entities;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

class StaffTest {

	private static EntityManagerFactory emf; 
	private EntityManager em; 
	private Staff staff; 
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAMSFG"); 
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager(); 
		staff = em.find(Staff.class, 1); 
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		staff = null; 
	}

	@Test
	void test() {
		assertNotNull(staff);
		assertEquals("Robert", staff.getFirstName());
	}

}
