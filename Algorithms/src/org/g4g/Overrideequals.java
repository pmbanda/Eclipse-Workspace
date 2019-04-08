package org.g4g;

class Complex {
	private double re, im;

	public Complex(double re, double im) {
		this.re = re;
		this.im = im;
	}

	@Override
	public boolean equals(Object o) {
		
		// If the object is compared with itself then return true   
        if (o == this) { 
            return true; 
        } 
  
        /* Check if o is an instance of Complex or not 
          "null instanceof [type]" also returns false */
        if (!(o instanceof Complex)) { 
            return false; 
        } 
          
        // typecast o to Complex so that we can compare data members  
        Complex c = (Complex) o; 
          
        // Compare the data members and return accordingly  
        return this.re == c.re && this.im == c.im; 
		
	}
}

public class Overrideequals {

	public static void main(String[] args) {

		Complex c1 = new Complex(10, 15);
		Complex c2 = new Complex(10, 15);

		System.out.println("Compare == Operator");
		if (c1 == c2) {
			System.out.println("Equal ");
		} else {
			System.out.println("Not Equal ");
		}
		
		System.out.println();
		
		System.out.println("Object Compared to itself " + c1.equals(c2));
		
		System.out.println();
		
		c1 = new Complex(10, 25);
		c2 = new Complex(10, 15);
		
		System.out.println("Object Compared to itself " + c1.equals(c2));
		
		
	}

}
