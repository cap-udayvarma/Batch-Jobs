package com.job;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

public class SendEPCSNotification {

	public static void main(String[] args) {

		SendEPCSNotification sendEPCSNotification = new SendEPCSNotification();
		sendEPCSNotification.sendEPCSNotificationFi();
		sendEPCSNotification.sendEPCSNotificationSe();
	}

	public void sendEPCSNotificationFi() {
		try {
			String scriptPath = "/mnt/c/Test-SB/Kroger/BatchJobs/workspaceJob/BatchJob51/script/sendEPCSNotification.sh";
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

	public void sendEPCSNotificationSe() {
		try {
			String scriptPath = "/mnt/c/Test-SB/Kroger/BatchJobs/workspaceJob/BatchJob51/script/sendEPCSNotification.sh";
			// Create the ProcessBuilder for the shell script
			ProcessBuilder processBuilder = new ProcessBuilder("bash", scriptPath);
			// Start the process
			Process process = processBuilder.start();
			// Read the output from the process
			InputStream inputStream = process.getInputStream();
			BufferedReader reader = new BufferedReader(new InputStreamReader(inputStream));
			String line;
			while ((line = reader.readLine()) != null) {
				System.out.println(line);
			}
			// Wait for the process to complete
			int exitCode = process.waitFor();
			// Print the exit code
			System.out.println("Script execution completed with exit code: " + exitCode);
		} catch (IOException | InterruptedException e) {
			e.printStackTrace();
		}
	}

}
