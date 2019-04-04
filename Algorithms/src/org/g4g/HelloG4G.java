package org.g4g;

/* This is a simple Java program. 
FileName : "HelloWorld.java". */
public class HelloG4G {

	// Your program begins with a call to main(). 
    // Prints "Hello, World" to the terminal window.
	public static void main(String[] args) {
		
		System.out.println("Hello G4G!");
		
		System.out.println("..............");
		int count = 0; 
		// Loop through the array of passed variables
		for (int i = 0; i < args.length; i++) {
			
			System.out.println(args[i]);
			count++;
			
		}
		// Count the total number of arguments passed
		System.out.println();
		System.out.println("Total number of arguments passed {" + count + "}");
		
		System.out.println("...............");
		
		// Determine the username and password
		if(args[0].equalsIgnoreCase("admin") && args[1].equalsIgnoreCase("password")) {
			System.out.println("Congratulations Username && Passwords match");
		}else {
			System.out.println("Sorry Failed Attempt Username && Passwords DONT match");
		}
		
		System.out.println();
		
		System.out.println("Success....");
		
		
		
		
	}

}
