package gugudanpractice;
import java.util.Scanner;
public class Gugudan3 {
	public static void main(String[] args) {
		try (Scanner scanner = new Scanner(System.in)) {
			int dan;
			int result;
			
			while(true) {
				dan = scanner.nextInt();
				System.out.println(dan+"단");
				for(int i = 1; i<= 9; i++) {
					result = dan * i;
					System.out.println(dan+"x"+i+"="+result);
				}
				System.out.println();
			}
		}
	}
}
