package org.g4g;

class BaseClass {
	public String name;
	public int age;
	
	public BaseClass(String name, int age) {
		this.name = name;
		this.age = age;
	}
	
}

public class DerivedClass extends BaseClass {
	
	public String dob;
	
	public DerivedClass(String name, int age, String dob) {
		super(name, age);
		this.dob = dob;
	}

	public static void main(String[] args) {
		
		DerivedClass d = new DerivedClass("Rachael", 45, "12/34/2019");
		System.out.println("Default name " + d.name);
		System.out.println("Default age " + d.age);
		System.out.println("Default dob " + d.dob);

	}

}
