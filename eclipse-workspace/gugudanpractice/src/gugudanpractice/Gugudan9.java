package gugudanpractice;

public class Gugudan9 {
	public static int[] calculate(int times) {
		int[] result = new int[9];
		for(int i = 0; i < result.length; i++) {
			result[i] = times * (i+1);
		}
		return result;
	}
	public static void print(int[] result, int times) {
		for(int i = 0; i < result.length; i++) {
			System.out.println(times+"x"+(i+1)+"="+result[i]);
		}
	}
}
