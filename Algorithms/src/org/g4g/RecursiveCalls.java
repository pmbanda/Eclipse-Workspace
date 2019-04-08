package org.g4g;

public class RecursiveCalls {

	public static void main(String[] args) {
		
		for(int i = 1; i < 20; i++) {
			System.out.println(sum(i));
		}
		
	}
	
	static int sum(int n) {
		if( n <= 0)
			return 0;
		else
			return n + sum(n - 1);
	}

}
