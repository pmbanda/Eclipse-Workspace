package org.g4g;

public class ForEach {

	public static void main(String[] args) {
		
		int[] marks = { 125, 132, 95, 116, 110, 132 }; 
        
        int highest_marks = maximum(marks); 
        System.out.println("The highest score is " + highest_marks);
        
        int lowest_marks = minimum(marks); 
        System.out.println("The highest score is " + lowest_marks);
        
        display(marks); 

	}
	private static void display(int[] marks) {
		System.out.println(".......");
		System.out.println("Display array values");
		for (int i : marks) {
			System.out.println(i);
		}
		
	}
	// Determine lowest grade
	private static int minimum(int[] marks) {
		int lowest = marks[0];
		
		for (int x : marks) {
			if(x < lowest)
				lowest = x;
		}
		
		return lowest;
	}
	// Determine highest grade
	private static int maximum(int[] marks) {
		int highest = marks[0];
		
		for (int x : marks) {
			if(x > highest)
				highest = x;
		}
		
		return highest;
	}

}
