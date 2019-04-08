package org.g4g;

import java.util.Arrays;

public class ReverseArray {

	public static void main(String[] args) {

		int[] arr = { 10, 4, 33, 6, 22, 16, 5, 622, 6464, 6363, 6363, 534 };

		System.out.printf("Array %s \n\n", Arrays.toString(arr));

		// sort array
		Arrays.sort(arr);

		int[] sortedArray = arr;

		System.out.printf("Sorted Array %s \n", Arrays.toString(sortedArray));

		System.out.println();
		
		System.out.print("Reverse Array ");
		
		for (int i = 0; i < sortedArray.length; i++) {
			sortedArray[i] = sortedArray[sortedArray.length - 1 - i];
		}
		

		
		System.out.printf("Reversed Array %s \n", Arrays.toString(sortedArray));
		
	}

}
