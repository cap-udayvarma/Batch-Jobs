package com.script.poc;

import java.io.IOException;

public class Job49ScriptExecutor {

	public static void main(String[] args) {
		
		        try {
		        	String path  = "/home/udayvarma/Batch-jobs/Group1BatchJob_49/script/runMoveAuditFiles.sh";
		            // Build the shell command
		            ProcessBuilder processBuilder = new ProcessBuilder("bash", path);

		            // Start the process
		            Process process = processBuilder.start();

		            // Wait for the process to complete
		            int exitCode = process.waitFor();

		            if (exitCode == 0) {
		                System.out.println("Files Pulled successfully!");
		            } else {
		                System.out.println("Failed to pull the file. Exit code: " + exitCode);
		            }

		        } catch (IOException | InterruptedException e) {
		            System.out.println("An error occurred while executing the shell script: " + e.getMessage());
		        }
	}

}
