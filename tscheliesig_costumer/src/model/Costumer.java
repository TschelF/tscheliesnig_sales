package model;

public class Costumer {
	
	private String name;
	private int id;
	private float price;
	
	public Costumer (int id, float prize, String name)
	{
		setId(id);
		setPrice(prize);
		setName(name);
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	
	
	
	

}
