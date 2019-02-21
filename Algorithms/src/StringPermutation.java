
public class StringPermutation {
	static int count = 0;

	public static void main(String[] args) {
		String str = "myiadnc";
		permutation(str, "");
		System.out.println("Count " + count);

	}

	static void permutation(String str, String prefix) {

		if (str.length() == 0) {
			//if (prefix.startsWith("mind") || prefix.startsWith("ad") || prefix.startsWith("mad") || prefix.startsWith("mid")) {
				System.out.println(prefix);
				count++;
			///}
		} else {
			for (int i = 0; i < str.length(); i++) {
				String rem = str.substring(0, i) + str.substring(i + 1);
				permutation(rem, prefix + str.charAt(i));
			}
		}
	}
}
