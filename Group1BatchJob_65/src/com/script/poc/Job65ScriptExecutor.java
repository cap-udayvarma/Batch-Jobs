package com.script.poc;

import java.io.IOException;

public class Job65ScriptExecutor {

	public static void main(String[] args) {
		try {
		String scriptPath = "/home/udayvarma/Batch-jobs/Group1BatchJob_65/script/DeleteStaleRequestBatchProcess.sh";
		ProcessBuilder processBuilder = new ProcessBuilder("bash", scriptPath);
		
		processBuilder.inheritIO();
		
		Process process = processBuilder.start();
	
		int exitCode = process.waitFor();
		
		if(exitCode == 0)
			System.out.println("File deleted successfully!!!!!");
		else 
			System.out.println("Failed to delete the file");
	} catch (IOException | InterruptedException e) {
		e.printStackTrace();
	}
	}

}
