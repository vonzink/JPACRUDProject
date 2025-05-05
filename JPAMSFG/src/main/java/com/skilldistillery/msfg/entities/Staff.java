package com.skilldistillery.msfg.entities;

import java.time.LocalDate;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Staff {

		//fields
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name="first_name")
	private String firstName; 
	@Column(name="last_name")
	private String lastName; 
	@Column(name="birth_date")
	private LocalDate birthDate; 
	private String email; 
	private String phone; 
	@Column(name="start_date")
	private LocalDate startDate; 
	@Column(name="end_date")
	private LocalDate endDate; 
	private Boolean active; 
	@Column(name="job_title")
	private String jobTitle; 
	@Column(name="employment_type")
	private String employmentType; 
	private String nmls;
	private String headshot; 
	
	//constructor
	
	public Staff() {
		super();
	}

	//getters/setters
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public LocalDate getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(LocalDate birthDate) {
		this.birthDate = birthDate;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public LocalDate getStartDate() {
		return startDate;
	}

	public void setStartDate(LocalDate startDate) {
		this.startDate = startDate;
	}

	public LocalDate getEndDate() {
		return endDate;
	}

	public void setEndDate(LocalDate endDate) {
		this.endDate = endDate;
	}

	public Boolean isActive() {
		return active;
	}

	public void setActive(Boolean active) {
		this.active = active;
	}

	public String getJobTitle() {
		return jobTitle;
	}

	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}

	public String getEmploymentType() {
		return employmentType;
	}

	public void setEmploymentType(String employmentType) {
		this.employmentType = employmentType;
	}

	public String getNmls() {
		return nmls;
	}

	public void setNmls(String nmls) {
		this.nmls = nmls;
	}

	

	 //toString
	
	public String getHeadshot() {
		return headshot;
	}

	public void setHeadshot(String headshot) {
		this.headshot = headshot;
	}

	public Boolean getActive() {
		return active;
	}

	@Override
	public String toString() {
		return "Staff [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", birthDate="
				+ birthDate + ", email=" + email + ", phone=" + phone + ", startDate=" + startDate + ", endDate="
				+ endDate + ", active=" + active + ", jobTitle=" + jobTitle + ", employmentType=" + employmentType
				+ ", nmls=" + nmls + "]";
	}	
	
}
