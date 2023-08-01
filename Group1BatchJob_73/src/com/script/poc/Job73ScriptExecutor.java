package com.script.poc;

import java.io.IOException;

public class Job73ScriptExecutor {

	public static void main(String[] args) {
		String scriptPath = "/home/udayvarma/Batch-jobs/Group1BatchJob_73/script/backupCron.sh";

        try {
        	ProcessBuilder processBuilder = new ProcessBuilder("bash", scriptPath);
			
			processBuilder.inheritIO();
			
			Process process = processBuilder.start();
		
			int exitCode = process.waitFor();
			
			if(exitCode == 0)
				System.out.println("File backed up successfully!!!!!");
			else 
				System.out.println("Failed to back up the file");
		} catch (IOException | InterruptedException e) {
			e.printStackTrace();
		}
	}

}
