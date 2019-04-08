package org.g4g;

public class NestedClass {
	// Outer class variable
	static int x = 0, y = 0;
	
	static class StaticNested {
		// Inner class variable
		int a = 555, b = 999;
		
		void accessMembers() {
			//NestedClass c = new NestedClass();
			System.out.println("x = " + x + " y = " + y);
		}
		
	}
	
	public static void main(String[] args) {
		
		System.out.println("Outer class variables (Non Static var)");
		System.out.println(NestedClass.x);
		System.out.println(NestedClass.y);
		
//		System.out.println("\nOuter class variables (Static var)");
//		System.out.println(new NestedClass().new StaticNested().a);
//		System.out.println(new NestedClass().new StaticNested().b);
		
		System.out.println("\nMethod Access class variables ");
		new NestedClass.StaticNested().accessMembers();
	}

}
