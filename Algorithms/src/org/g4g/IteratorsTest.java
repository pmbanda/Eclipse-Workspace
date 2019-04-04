package org.g4g;

import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class IteratorsTest {

	public static void main(String[] args) {
		
		List<Integer> arr = Arrays.asList( 33, 45, 45, 22, 72, 2, 1 );

		for (Iterator<Integer> iterator = arr.iterator(); iterator.hasNext();) {
			System.out.println(iterator.next());
			
		}
		System.out.println(arr);
	}

}
