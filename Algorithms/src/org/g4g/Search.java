package org.g4g;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

public class Search {

	public static void main(String[] args) {
		
		int[] arr = { 13, 7, 6, 45, 21, 9, 101, 102 }; 
		System.out.printf("Befor arr[] : %s\n", 
                Arrays.toString(arr)); 
		
        Arrays.sort(arr); 
  
        System.out.printf("Modified arr[] : %s\n", 
                          Arrays.toString(arr)); 
        
     // Create a list of strings 
        ArrayList<String> al = new ArrayList<String>(); 
        al.add("Geeks For Geeks"); 
        al.add("Friends"); 
        al.add("Dear"); 
        al.add("Is"); 
        al.add("Superb"); 
  
        System.out.println("Before the use of"
                + " Collection.sort() :\n" + al);
        
        /* Collections.sort method is sorting the 
        elements of ArrayList in ascending order. */
        Collections.sort(al); 
  
        // Let us print the sorted list 
        System.out.println("List after the use of"
                           + " Collection.sort() :\n" + al); 

	}

}
