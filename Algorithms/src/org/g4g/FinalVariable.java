package org.g4g;

import java.util.Scanner;

class Instance {
	final int x;

	// blank final field has to be initialized
	public Instance(int x) {
		this.x = x;
	}

}

public class FinalVariable {

	public static void main(String[] args) {

		// Final variable declaration
		final double PI = 3.14231;
		final int x;
		System.out.printf("The value of PI is %3.3f \n", PI);
		
		Scanner sc = new Scanner(System.in);
		
		System.out.print("Enter a value? ");
		x = sc.nextInt();
		
		System.out.println("You Entered " + x);

//		int[] arr = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 44, 46 };
//		
//		IntStream ias = Arrays.stream(arr);
//		
//		ias.forEach( System.out::println );

	}

}
