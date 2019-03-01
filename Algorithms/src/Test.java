import java.io.IOException;
import java.io.InputStream;
import java.util.Scanner;

public class Test {

	public static void main(String[] args) {
		
		for(int i = 0; i < 249; i++ ) {
			System.out.println((char)i);
		}
		
		Scanner sc = new Scanner(System.in);
		String value = null;
		
		System.out.println("Please enter a value");
		value = sc.next();
		
		System.out.println("You " + value);
		System.out.println("You pressed " +  value.codePointAt(0) );
		
		if(value.codePointAt(0) == 99) {
			System.out.println("You pressed C");
		}else {
			System.out.println("Failed");
		}
		
		sc.close();
		
		
	}

}
