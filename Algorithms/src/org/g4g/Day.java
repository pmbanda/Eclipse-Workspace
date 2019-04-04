package org.g4g;

public enum Day {

	SUNDAY("Red") , MONDAY("Orange"), TUESDAY("Yellow"), WEDNESDAY("Green"), THURSDAY("Blue"), FRIDAY("Indigo"),
	SATURDAY("Violet");

	private String color;

	private Day(String color) {
		this.color = color;
	}
	
	public String getDayColor() {
		return this.color;
	}
}
