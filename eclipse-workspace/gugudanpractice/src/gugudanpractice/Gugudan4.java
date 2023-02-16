package gugudanpractice;
import java.util.Scanner;
public class Gugudan4 {
	public static void main(String[] args) {
		try (Scanner scanner = new Scanner(System.in)) {
			System.out.println("몇 단을 출력할까요? ");
			int dan,result;
			dan = scanner.nextInt();
			for(int i = 1; i<=9; i++) {
				result = dan * i;
				if(dan>=2 && dan <=9) {
					System.out.println(dan+"x"+i+"="+result);
				}
				else {
					System.out.println("2이상, 9이하의 값만 입력할 수 있습니다.");
					break;
				}
			}
		}
	}

}
