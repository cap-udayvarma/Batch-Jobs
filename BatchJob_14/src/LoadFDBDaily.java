

import java.io.IOException;

public class LoadFDBDaily {

	public static void main(String[] args) {
		LoadFDBDaily loadFDBDaily = new LoadFDBDaily();
		loadFDBDaily.LoadFDBDailyFi();
	}

	public void LoadFDBDailyFi() {
		try {
			String scriptPath = "/mnt/c/Test-SB/Kroger/shellScript_20723/Jobs_workspace/BatchJob14/script/load_fdb_daily.sh";
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
