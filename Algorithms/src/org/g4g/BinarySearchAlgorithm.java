package org.g4g;

import java.util.Arrays;

public class BinarySearchAlgorithm {

	public static void main(String[] args) {

		int[] arr = { 10, 4, 33, 6, 22, 16, 5, 622, 54, 33 };

		System.out.printf("Array %s \n\n", Arrays.toString(arr));

		// sort array
		Arrays.sort(arr);

		int[] sortedArray = arr;

		System.out.printf("Sorted Array %s \n", Arrays.toString(arr));

		System.out.println();

		// conduct search on a particular value
		
		
		for(int i = 0; i < 700; i++) {
			
			int start = 0;
			int end = (sortedArray.length - 1);
			int target = i;
			
			int index = binarySearch(sortedArray, end, start, target);
			
			if(index >= 0)
				System.out.printf("%-3d Found at index %-3d value %-3d \n", i, index, sortedArray[index]);
		}
		
		
		for (; ;) {
			System.out.println("Hello Happiness");
		}

	}

	static int binarySearch(int[] array, int end, int start, int target) {

		while(end >= start) {
			
			int middle = (end + start) / 2;
			
			if (target == array[middle])
				return middle;
			if (target < array[middle]) {
				return binarySearch(array, (middle - 1), start, target);
			} else if (target > array[middle]) {
				return binarySearch(array, end, (middle + 1), target);
			}
		}
		
		return -1;
	}

}
