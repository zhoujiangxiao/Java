package cn.com.project.interest;

import java.util.Scanner;
/**
 * 
 * 
 * @Title: ScrewSquare ��������
 * 
 * @Package cn.com.project.interest
 * 
 * @Description: TODO(��һ�仰�������ļ���ʲô)
 * 
 * @author HeDw
 * 
 * @date 2016-1-2 ����4:57:34
 */
public class ScrewSquare {

	public static void main(String[] args) {

	}

	/**
	 * 
	 * @description ��������
	 * 
	 * @author HeDw
	 * 
	 */
	public void screwMatrix() {
		System.out.print("���������֣�");
		Scanner input = new Scanner(System.in);
		int number = input.nextInt();

		int[][] matrix = new int[number][number];
		int max = number * number;
		int row = 0, col = 0;
		int direction = 0;
		for (int j = 1; j <= max; j++) {
			matrix[row][col] = j;
			switch (direction) {
				case 0 :
					if (col + 1 >= number || matrix[row][col + 1] > 0) {
						direction += 1;
						direction %= 4;
						row += 1;
					} else {
						col = col + 1;
					}
					break;
				case 1 :
					if (row + 1 >= number || matrix[row + 1][col] > 0) {
						direction += 1;
						direction %= 4;
						col -= 1;
					} else {
						row = row + 1;
					}
					break;
				case 2 :
					if (col - 1 < 0 || matrix[row][col - 1] > 0) {
						direction += 1;
						direction %= 4;
						row = row - 1;
					} else {
						col = col - 1;
					}
					break;
				case 3 :
					if (row - 1 < 0 || matrix[row - 1][col] > 0) {
						direction += 1;
						direction %= 4;
						col += 1;
					} else {
						row = row - 1;
					}
					break;
				default :
					System.out.println("ERROR");
					System.exit(0);
			}
		}
		for (int j = 0; j < number; j++) {
			for (int k = 0; k < number; k++) {
				// �ж����������ĳ���
				int size = ((number * number) + "").length();

				for (int i = 0; i <= (size - (matrix[j][k] + "").length() + 1); i++) {
					System.out.print(" ");
				}
				System.out.print(matrix[j][k]);
			}
			System.out.println("");
		}
	}
}
