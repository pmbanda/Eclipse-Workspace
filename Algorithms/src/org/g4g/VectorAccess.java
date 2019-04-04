package org.g4g;

import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.TreeSet;
import java.util.Vector;

public class VectorAccess {

	public static void main(String[] args) {
		
		// Create an empty collection 
        Vector<String> abs = new Vector<String>();
  
        // Use add() method to add 
        // elements in the collection 
        abs.add("Welcome"); 
        abs.add("To"); 
        abs.add("Geeks"); 
        abs.add("4"); 
        abs.add("Geeks"); 
  
        // Displaying the Collection 
        System.out.println("AbstractCollection: Iterator "
                           + abs); 
        
        Iterator<String> iter = abs.iterator();
        
        while (iter.hasNext()) {
			System.out.println(iter.next());
			
		}
        
     // Displaying the Collection 
        System.out.println("AbstractCollection: enumerator "
                           + abs); 
        
        Enumeration<String> enumer = abs.elements();
        
        while (enumer.hasMoreElements()) {
			System.out.println(enumer.nextElement());
			
		}
        
     // Create an empty collection 
        AbstractCollection<Object> abs1 = new TreeSet<Object>(); 
  
        // Use add() method to add 
        // elements in the collection 
        abs1.add("Welcome"); 
        abs1.add("To"); 
        abs1.add("Geeks"); 
        abs1.add("4"); 
        abs1.add("Geeks"); 
  
        // Displaying the Collection 
        System.out.println("AbstractCollection: "
                           + abs1); 
        
        System.out.println("..............");
        
        System.out.println("Iterator");
        for (Object object : abs1) {
			System.out.println(object);
		}
        
        ArrayList al = new ArrayList(); 
        for (int i = 0; i < 10; i++) 
            al.add(i); 
  
        System.out.println(al); 
        System.out.println("........................");
  
        // at beginning ltr(cursor) will point to 
        // index just before the first element in al 
        ListIterator ltr = al.listIterator(); 
  
        // checking the next element availabilty 
        while (ltr.hasNext()) 
        { 
            //  moving cursor to next element 
            int i = (Integer)ltr.next(); 
  
            // getting even elements one by one 
            System.out.print(i + " "); 
  
            // Changing even numbers to odd and 
            // adding modified number again in  
            // iterator 
            if (i%2==0) 
            { 
                i++;  // Change to odd 
                ltr.set(i);  // set method to change value 
                ltr.add(i);  // to add 
            } 
        } 
        System.out.println(); 
        System.out.println(al); 
       
	}

}
