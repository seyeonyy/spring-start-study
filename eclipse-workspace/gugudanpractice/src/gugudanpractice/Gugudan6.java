package gugudanpractice;
public class Gugudan6 {
	public static void main(String[] args) {
		int[] result = new int[9];
		int i, j;
		for(j = 2; j <= result.length; j++) {
			System.out.println(j+"단");
			for(i = 0; i < result.length; i++) {
				result[i] = j * (i+1);
			}
			for(i = 0; i < result.length; i++) {
				System.out.println(j+"x"+(i+1)+"="+result[i]);
			}
			System.out.println();
		}
	}
}
