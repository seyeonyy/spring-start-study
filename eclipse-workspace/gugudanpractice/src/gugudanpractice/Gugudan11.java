package gugudanpractice;
import java.util.Scanner;

public class Gugudan11 {
	public static void main(String[] args) {
		try (Scanner scanner = new Scanner(System.in)) {
			System.out.print("몇 단을 출력할까요? ");
			String dan1 = scanner.nextLine();
			String dan2 = scanner.nextLine();
			String str = dan1 + dan2;
			String[] strArr = str.split(",");
			int result;
			
			for(int j = 2; j <= Integer.parseInt(strArr[0]); j++) {
				for(int i = 1; i <= Integer.parseInt(strArr[1]); i++) {
					result = j * i;
					System.out.println(j+"x"+i+"="+result);
				}
			}
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
