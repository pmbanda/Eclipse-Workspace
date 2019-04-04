package org.g4g;

import java.util.AbstractSequentialList;
import java.util.ArrayList;
import java.util.LinkedList;

public class ArrayLst {

	public static void main(String[] args) {
		
		ArrayList<Integer> al  = new ArrayList<Integer>();
		
		al.add(1);
		al.add(2);
		al.add(3);
		al.add(4);
		
		al.forEach(System.out::println);
		
		System.out.println("........");
		
		// Creating an empty AbstractSequentialList 
        AbstractSequentialList<String> 
            absqlist = new LinkedList<String>(); 
  
        // Using add() method to add elements in the list 
        absqlist.add("Geeks"); 
        absqlist.add("for"); 
        absqlist.add("Geeks"); 
        absqlist.add("10"); 
        absqlist.add("20"); 
  
        // Output the list 
        System.out.println("AbstractSequentialList: "
                           + absqlist); 
  
        // Remove the head using remove() 
        absqlist.remove(3); 
  
        // Print the final list 
        System.out.println("Final List: "
                           + absqlist); 
  
        // Fetching the specific element from the list 
        // using get() method
        
        System.out.println("The element is: "
                           + absqlist.get(2)); 
        
        System.out.println("..............");
        absqlist.add("adding"); 
        absqlist.add("extra"); 
        absqlist.add("32"); 
        
        System.out.println("Final List: "
                + absqlist); 

	}

}
