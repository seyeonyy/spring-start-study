package gugudanpractice;

public class Gugudan7 {
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
	public static void main(String[] args) {
		for(int j = 2; j < 10; j++) {
			int[] result = calculate(j);
			int times = j;
			System.out.println("<"+j+"단>");
			print(result, times);
			System.out.println();
		}
	}
}

