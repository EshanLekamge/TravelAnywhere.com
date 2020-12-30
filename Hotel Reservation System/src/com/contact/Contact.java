package com.contact;

public class Contact {
	
	private int id;
    private String name;
    private String phone;
    private String email;
    private String message;
   
	public Contact(int id, String name, String phone, String email, String message) {
		this.id = id;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.message = message;
	}

	public int getId() {
		return id;
	}


	public String getName() {
		return name;
	}


	public String getPhone() {
		return phone;
	}


	public String getEmail() {
		return email;
	}


	public String getMessage() {
		return message;
	}

	
}	


