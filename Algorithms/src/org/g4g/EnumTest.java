package org.g4g;

public class EnumTest {
	// Define the enum Day and provide a variable
	static Day day;

	public EnumTest(Day day) {
		this.day = day;
	}

	public void tellItLikeItIs() {

		switch (day) {
		case MONDAY:
			System.out.println("Mondays are bad.");
			break;

		case FRIDAY:
			System.out.println("Fridays are better.");
			break;

		case SATURDAY:
		case SUNDAY:
			System.out.println("Weekends are best.");
			break;

		default:
			System.out.println("Midweek days are so-so.");
			break;
		}
	}

	public static void main(String[] args) {
		
		Day day = null;
		
		EnumTest firstDay = new EnumTest(Day.MONDAY);
        firstDay.tellItLikeItIs();
        EnumTest thirdDay = new EnumTest(Day.WEDNESDAY);
        thirdDay.tellItLikeItIs();
        EnumTest fifthDay = new EnumTest(Day.FRIDAY);
        fifthDay.tellItLikeItIs();
        EnumTest sixthDay = new EnumTest(Day.SATURDAY);
        sixthDay.tellItLikeItIs();
        EnumTest seventhDay = new EnumTest(Day.SUNDAY);
        seventhDay.tellItLikeItIs();
        
        System.out.println(".......");
        System.out.println("Print all the enum values ");
        
        for (Day singleDay : Day.values()) {
			System.out.println(singleDay.name() + " ::Color:: " + singleDay.getDayColor());
		}
        
        System.out.println(".......");
        System.out.println(Day.MONDAY.getDayColor());
        

	}
	

}
