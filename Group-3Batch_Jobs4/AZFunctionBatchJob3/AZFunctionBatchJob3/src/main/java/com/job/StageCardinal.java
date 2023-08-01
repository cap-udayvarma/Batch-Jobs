package com.job;
import java.io.IOException;

public class StageCardinal {
	public static void main(String[] args) {
		StageCardinal stageCardinal = new StageCardinal();
		stageCardinal.StageCardinalFi();
	}
		public void StageCardinalFi() {
		try {
			String scriptPath = "/home/amith/batchjobs/Batch-Job-3/scripts/stageCardinal.sh";

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
