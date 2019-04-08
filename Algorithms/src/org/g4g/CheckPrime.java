package org.g4g;

public class CheckPrime {

	/*
	 *  Runner class in main 
	 */
	public static void main(String[] args) {
		
		for(int i = 2; i < 60; i++) {
			if(isPrime(i))
				System.out.println(i + " " + isPrime(i));
		}
	}
	
	/*
	 *  Determine if a number or value is prime
	 */
	static boolean isPrime(int number) {
		
		boolean prime = true;
		// if greater number than the square root is divisible by
		// the number the lower half also has a divisor
		for(int i = 2 ; i <= Math.sqrt(number) ; i++ ) {
			if(number % i == 0) {
				prime = false;
				return  false;
			}
		}
		
		return true;
		
	}

}
