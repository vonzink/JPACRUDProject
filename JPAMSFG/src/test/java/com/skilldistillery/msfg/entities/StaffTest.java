package com.skilldistillery.msfg.entities;

import static org.junit.jupiter.api.Assertions.*;

import java.time.LocalDate;

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
	void test_first_name() {
		assertNotNull(staff);
		assertEquals("Robert", staff.getFirstName());
	}

	@Test
	void test_last_name() {
		assertNotNull(staff);
		assertEquals("Hoff", staff.getLastName());
	}

	@Test
	void test_birth_date() {
		assertNotNull(staff);
		assertEquals(LocalDate.of(1977, 11, 1), staff.getBirthDate());
	}

	@Test
	void test_email() {
		assertNotNull(staff);
		assertEquals("robert.hoff@msfg.us", staff.getEmail());
	}

	@Test
	void test_phone() {
		assertNotNull(staff);
		assertEquals("720-838-6372", staff.getPhone());
	}

	@Test
	void test_start_date() {
		assertNotNull(staff);
		assertEquals(LocalDate.of(2015, 11, 3), staff.getStartDate());
	}

	@Test
	void test_end_date() {
		assertNotNull(staff);
		assertNull(staff.getEndDate());
	}

	@Test
	void test_job_title() {
		assertNotNull(staff);
		assertEquals("President CFA", staff.getJobTitle());
	}

	@Test
	void test_employment_type() {
		assertNotNull(staff);
		assertEquals("Exempt", staff.getEmploymentType());
	}

	@Test
	void test_nmls() {
		assertNotNull(staff);
		assertEquals("1234567", staff.getNmls());
	}
}
