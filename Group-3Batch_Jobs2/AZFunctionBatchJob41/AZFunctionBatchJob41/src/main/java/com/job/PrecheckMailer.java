package com.job;
import java.io.IOException;

public class PrecheckMailer {

	public static void main(String[] args) {
		PrecheckMailer precheckMailer = new PrecheckMailer();
		precheckMailer.PrecheckMailerFU();
	}
		
		public void PrecheckMailerFU() {
		try {
			String scriptPath = "/mnt/c/Test-SB/Kroger/shellScript_20723/Jobs_workspace/BatchJob41/script/precheck_mailer.sh";
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
