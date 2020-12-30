package com.customer;

public class Customer {
	
    private int id;
    private int cardnumber;
    private int securitycode;
    private int amount;
    private String expiredate;
    private String name;
    private String email;
    private String userName;
    private String password;
   
    
    
    
	public Customer(int id,String name,String email,int cardnumber,String expiredate,int securitycode,int amount,String userName,String password)
	
	
	
	
	{
		super();
		this.id = id;
		this.cardnumber = cardnumber;
		this.securitycode = securitycode;
		this.amount = amount;
		this.name = name;
		this.email = email;
		this.expiredate = expiredate;
		this.userName = userName;
		this.password = password;
		
		
		
		
		
		
	}
	public int getId() {
		return id;
	}
	
	
	public int getCardnumber() {
		return cardnumber;
	}
	
	public int getSecuritycode() {
		return securitycode;
	}
	
	public int getAmount() {
		return amount;
	}
	
	public String getName() {
		return name;
	}
	
	public String getEmail() {
		return email;
	}
	
	public String getExpiredate() {
		return expiredate;
	}
	
	public String getUserName() {
		return userName;
	}
	
	public String getPassword() {
		return password;
	}
	


	
	
	
    
    
    
   
}
