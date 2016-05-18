package cn.com.project.test;

public class Test_1 {

	public static void main(String[] args) {
		//System.out.println(7*9*3);
		//for(int i=1;i<10000000;i++){
		int i = 1449;
			if(i%2!=1){
				return;
			}
			if(i%3!=0){
				return;
			}
			if(i%4!=1){
				return;
			}
			if(i%5!=4){
				return;
			}
			if(i%6!=3){
				return;
			}
			if(i%7!=0){
				return;
			}
			if(i%8!=1){
				return;
			}
			if(i%9==0){
				System.out.println(i);
			}
		//}							
	}
}
