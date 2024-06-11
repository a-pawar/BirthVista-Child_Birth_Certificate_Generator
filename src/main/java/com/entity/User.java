package com.entity;

public class User {

	private int id;
	private String FirstName;
	private String LastName;
	private String MobileNumber;
	private String Address;
	private String Email;
	private String Password;
	private String RegDate;

	public User() {
		super();

	}

	public User(String firstName, String lastName, String mobileNumber, String address, String email, String password,
			String regDate) {
		super();
		FirstName = firstName;
		LastName = lastName;
		MobileNumber = mobileNumber;
		Address = address;
		Email = email;
		Password = password;
		RegDate = regDate;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return FirstName;
	}
	public void setFirstName(String firstName) {
		FirstName = firstName;
	}

	public String getLastName() {
		return LastName;
	}
	public void setLastName(String lastName) {
		LastName = lastName;
	}
	
	public String getMobileNumber() {
		return MobileNumber;
	}
	public void setMobileNumber(String mobileNumber) {
		MobileNumber = mobileNumber;
	}
	
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}

	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}

	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}

	public String getRegDate() {
		return RegDate;
	}
	public void setRegDate(String regDate) {
		RegDate = regDate;
	}
	
	@Override
	public String toString() {
		return "User [id=" + id + ", FirstName=" + FirstName + ", LastName=" + LastName + ", MobileNumber="
				+ MobileNumber + ", Address=" + Address + ", Email=" + Email + ", Password=" + Password + ", RegDate="
				+ RegDate + "]";
	}
}