package org.g4g;

public class SumProduct {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int[] arr = { 1, 2, 3, 4, 6 };
		
		for (int i = 0; i < arr.length; i++) {
			for (int j = 1; j < arr.length; j++) {
				System.out.println(arr[i] + " " + arr[j]);
			}
		}
	}

}
