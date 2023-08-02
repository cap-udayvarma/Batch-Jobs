

import java.io.IOException;

public class RxNormPullFull {
	public static void main(String[] args) {
		RxNormPullFull rxNormPullFull = new RxNormPullFull();
		rxNormPullFull.RxNormPullFullFi();
		
	}

		public void RxNormPullFullFi() {
		try {
			String scriptPath = "/home/udayvarma/Batch-jobs/BatchJob_18/script/RxNormPullFull.sh";
			ProcessBuilder processBuilder = new ProcessBuilder("bash", scriptPath);
			Process process = processBuilder.start();
			int exitCode = process.waitFor();
			if (exitCode == 0) {
				System.out.println("Success");
			} else {
				System.out.println("Failed");
			}
		} catch (IOException | InterruptedException e) {
			e.printStackTrace();
		}
	}
}	