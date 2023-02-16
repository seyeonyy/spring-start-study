package gugudanpractice;
import java.util.Scanner;
public class Gugudan10 {
	public static void main(String[] args) {
		try (Scanner scanner = new Scanner(System.in)) {
			int dan, result;
			System.out.print("몇 단을 출력할까요? ");
			dan = scanner.nextInt();
			for(int j = 2; j<= dan; j++) {
				for(int i = 0; i < dan; i++) {
					result = j * (i+1);
					System.out.println(j+"x"+(i+1)+"="+result);
				}
			}
		}
	}
}
