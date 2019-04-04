package org.g4g;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
// Initialization on JVM
class People {
	static{
		System.out.println("Parent Static ");
	}
	{
		System.out.println("Non Static ::People:: Initializer");
	}
	protected String name;
	protected int age;

	public People(String name, int age) {
		this.name = name;
		this.age = age;
	}
	public People() {
		
	}

}

class Person extends People {
	static{
		System.out.println("Child Static ");
	}
	{
		System.out.println("Non Static ::Person:: Initializer");
	}
	protected String name;
	protected int age;
	protected String gender;

	public Person(String name, int age, String gender) {
		super(name, age);
		this.gender = gender;
	}

	public Person() {
		
	}

}

//A sample class whose information is fetched above using 
//its Class object. 
class Student {
	private String name;
	private int roll_No;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getRoll_no() {
		return roll_No;
	}

	public void setRoll_no(int roll_no) {
		this.roll_No = roll_no;
	}
}

public class ClassLoader {

	public static void main(String[] args) {
		// Get the name of the class
		System.out.println("Class:: " + new Person("Jamal", 32, "male").getClass().getName());

		// Get the name of the superclass
		System.out.println("Class:: " + new Person("Jamal", 32, "male").getClass().getSuperclass().getName());

		System.out.println("Is Local Class:: " + new Person("Jamal", 32, "male").getClass().isLocalClass());
		System.out.println("Is Enum:: " + new Person("Jamal", 32, "male").getClass().isEnum());
		System.out.println("Is Interface:: " + new Person("Jamal", 32, "male").getClass().isInterface());
		
		System.out.println(".....");
		
		Student s1 = new Student(); 
		  
        // Getting hold of Class object created 
        // by JVM. 
        Class<?> c1 = s1.getClass(); 
  
        // Printing type of object using c1. 
        System.out.println(c1.getName()); 
  
        // getting all methods in an array 
        Method m[] = c1.getDeclaredMethods(); 
        for (Method method : m) 
            System.out.println(method.getName()); 
  
        // getting all fields in an array 
        Field f[] = c1.getDeclaredFields(); 
        for (Field field : f) 
            System.out.println(field.getName()); 

	}

}
