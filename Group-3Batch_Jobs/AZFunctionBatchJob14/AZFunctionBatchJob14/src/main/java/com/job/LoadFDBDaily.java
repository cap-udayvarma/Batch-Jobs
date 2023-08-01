package com.job;

import java.io.IOException;

public class LoadFDBDaily {

	public static void main(String[] args) {
		LoadFDBDaily loadFDBDaily = new LoadFDBDaily();
		loadFDBDaily.LoadFDBDailyFi();
	}

	public void LoadFDBDailyFi() {
		try {
			String scriptPath = "/hone/udayvarma/Batch-jobs/Group-3Batch_Jobs/AZFunctionBatchJob14/AZFunctionBatchJob14/source//script/load_fdb_daily.sh";
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
