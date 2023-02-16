package gugudanpractice;
import java.util.Scanner;
public class Gugudan2 {
	public static void main(String[] args) {
		try (Scanner scanner = new Scanner(System.in)) {
			int dan;
			int result;
			int i = 1;
			dan = scanner.nextInt();
			System.out.println(dan+"단");
			while(i<10){
				result = dan * i;
				System.out.println(dan+"x"+i+"="+result);
				i++;
			}
			System.out.println();
		}
	}
}
