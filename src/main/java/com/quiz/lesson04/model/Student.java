package com.quiz.lesson04.model;

import java.util.Date;

public class Student {
	private int id;
	private String name;
	private String phoneNumber;
	private String email;
	private Date createdAt;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpatedAt() {
		return upatedAt;
	}

	public void setUpatedAt(Date upatedAt) {
		this.upatedAt = upatedAt;
	}

	private Date upatedAt;
}