package com.script.poc;

import java.io.IOException;

public class Job9ScriptExecutor {

	public static void main(String[] args) {
		  
        try {
        	String scriptPath="/home/udayvarma/Batch-jobs/Group1BatchJob_9/script/FDB44_ALERTSPACE_UPD_PROD.sh";
            ProcessBuilder processBuilder = new ProcessBuilder("bash", scriptPath);
            
            
            Process process = processBuilder.start();
            
           
            int exitCode = process.waitFor();

            if (exitCode == 0) {
                System.out.println(" successfully.");
            } else {
                System.out.println("Failed .");
            }
        } catch (IOException | InterruptedException e) {
            e.printStackTrace();
        }

	}

}
