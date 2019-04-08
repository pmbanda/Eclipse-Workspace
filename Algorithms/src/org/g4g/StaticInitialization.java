package org.g4g;

public class StaticInitialization {

	public static void main(String[] args) {
		
		Person p = new Person("Peter Mbanda", 32, "Male");
		System.out.println(p);
		
		p = new Person("Jamal Mansory", 22, "Male");
		System.out.println(p);
		
		System.out.println();
		

        // String class is loaded by bootstrap loader, and 
        // bootstrap loader is not Java object, hence null 
        System.out.println("String:: " + String.class.getClassLoader()); 
        System.out.println("Byte:: " + Byte.class.getClassLoader()); 
        System.out.println("Short:: " + Short.class.getClassLoader()); 
        System.out.println("Int:: " + Integer.class.getClassLoader()); 
        System.out.println("Long:: " + Long.class.getClassLoader()); 
        System.out.println("Person:: " + Person.class.getClassLoader()); 
        System.out.println("People:: " + People.class.getClassLoader());  
        
	}

}
