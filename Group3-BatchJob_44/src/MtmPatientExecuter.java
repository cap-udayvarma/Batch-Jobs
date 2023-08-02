

import java.io.IOException;

public class MtmPatientExecuter {
	public static void main(String[] args) {
		MtmPatientExecuter mtmPatientExecuter = new MtmPatientExecuter();
		mtmPatientExecuter.MtmPatientExecuterFi();
	}

	public void MtmPatientExecuterFi() {
		try {
			String scriptPath = "/home/udayvarma/Batch-jobs/BatchJob_44/script/mtm_daily.sh";

			ProcessBuilder processBuilder = new ProcessBuilder("/bin/bash", scriptPath);
			Process process = processBuilder.start();

			int exitCode = process.waitFor();
			if (exitCode == 0) {
				System.out.println("Shell script executed successfully.");
			} else {
				System.err.println("Error occurred while executing the shell script. Exit code: " + exitCode);
			}
		} catch (IOException | InterruptedException e) {
			e.printStackTrace();
		}
	}
}
