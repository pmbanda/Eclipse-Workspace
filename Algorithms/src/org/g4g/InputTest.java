package org.g4g;

import java.util.Scanner;

public class InputTest {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		try {

			System.out.print("Please Enter a number?  ");
			String num = sc.nextLine();

			int val = Integer.parseInt(num);

			while (val >= 0 && val <= Integer.MAX_VALUE) {
				System.out.println("Hurrah");

				System.out.print("Please Enter a number?  ");
				num = sc.nextLine();
				val = Integer.parseInt(num);
			}

			System.out.println("Bummer");
			System.exit(0);

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		sc.close();

	}

}
