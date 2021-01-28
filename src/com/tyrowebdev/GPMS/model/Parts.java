package com.tyrowebdev.GPMS.model;

public class Parts {
	
	public Parts(String name, int quantity, int cost) {
		super();
		this.name = name;
		this.quantity = quantity;
		this.cost = cost;
	}
	public Parts(String name, int quantity, int cost, String date_time) {
		super();
		this.name = name;
		this.quantity = quantity;
		this.cost = cost;
		this.date_time = date_time;
	}
	public Parts(int id, String name, int i, int j, String date_time) {
		super();
		this.id = id;
		this.name = name;
		this.quantity = i;
		this.cost = j;
		this.date_time = date_time;
	}
	
	
	public Parts(int id, String name, int quantity, int cost) {
		super();
		this.id = id;
		this.name = name;
		this.quantity = quantity;
		this.cost = cost;
	}

	private int id ;
	private String name;
	private int quantity;
	private int cost;
	private String date_time;
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
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getCost() {
		return cost;
	}
	public void setCost(int cost) {
		this.cost = cost;
	}
	public String getDate_time() {
		return date_time;
	}
	public void setDate_time(String date_time) {
		this.date_time = date_time;
	}
		
	
}
