package kr.or.test;

public class ThreadApp extends Thread {

	public static void main(String[] args) {
		// 메인스레드 시작 진입점 main()
		//(new ThreadApp()).start();//아래 2줄과 이곳 1줄과 같습니다.
		ThreadApp threadApp = new ThreadApp();
		threadApp.start();
	}

}