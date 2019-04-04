package org.g4g;

public abstract class AbstractMain {

	public static void main(String[] args) {
		
		System.out.println("Run....");
		System.out.println("From Abstract Class Main....::AbstractMain::");
		
		System.out.println();
		
		System.out.println("Get Total Memory " + Runtime.getRuntime().totalMemory());
		
		System.out.println("Processors " + Runtime.getRuntime().availableProcessors());
	}

}
