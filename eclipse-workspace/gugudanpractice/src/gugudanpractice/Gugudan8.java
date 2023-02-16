package gugudanpractice;

public class Gugudan8 {
	public static void main(String[] args) {
		for(int j = 2; j < 10; j++) {
			int[] result = Gugudan9.calculate(j);
			int times = j;
			System.out.println("<"+j+"단>");
			Gugudan9.print(result, times);
			System.out.println();
		}
	}
}
