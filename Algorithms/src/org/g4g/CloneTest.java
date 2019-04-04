package org.g4g;

class Test implements Cloneable {
	public String name = "Test Cloning";
	
	public int getNumber() {
		return 100;
	}
	
	@Override
	protected Object clone() throws CloneNotSupportedException {
		return super.clone();
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return super.toString() + this.name;
	}
}

public class CloneTest {

	public static void main(String[] args) throws CloneNotSupportedException {
		
		Test t = new Test();
		
		Test cloned = (Test)t.clone();
		
		System.out.println(cloned);

	}

}
