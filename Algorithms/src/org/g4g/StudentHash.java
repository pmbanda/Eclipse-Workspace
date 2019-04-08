package org.g4g;

public class StudentHash {

	static int last_roll = 0; 
	int roll_no; 

	// Constructor 
	StudentHash() 
	{ 
		roll_no = last_roll; 
		last_roll++; 
	} 

	@Override
	public boolean equals(Object obj) {
		// TODO Auto-generated method stub
		return super.equals(obj);
	}
	// Overriding hashCode() 
	@Override
	public int hashCode() 
	{ 
		return roll_no; 
	} 

	public static void main(String[] args) {
		
		for(int i = 0 ; i < 100; i++) {
			StudentHash s = new StudentHash();
			System.out.println(s);
		}

	}

}
