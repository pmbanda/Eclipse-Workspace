package org.g4g;

import java.lang.reflect.Constructor;

public class ReflectionExample {
	
	static {
		System.out.println("Static invoke!");
	}
	
	{
		for (int i = 0; i < 10; i++) {
			System.out.println("Executed on instance creation!");
		}
	}
	
	private String name;
	

	private ReflectionExample() 
	{ 
		
		System.out.println("Constructor invoke!");
	} 
	public void setName(String name) 
	{ 
		this.name = name; 
	} 
  
	public static void main(String[] args) 
	{ 
		try
		{ 
			Constructor<ReflectionExample> constructor 
				= ReflectionExample.class.getDeclaredConstructor(); 
			ReflectionExample r = constructor.newInstance(); 
			r.setName("GeeksForGeeks"); 
			System.out.println(r.name); 
		} 
		catch (Exception e) 
		{ 
			e.printStackTrace(); 
		} 
	} 
}
