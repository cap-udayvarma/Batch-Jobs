
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

public class SkopeRejectAlert {

	public static void main(String[] args) {

		SkopeRejectAlert skopeRejectAlert = new SkopeRejectAlert();
		skopeRejectAlert.skopeRejectAlertFi();
		skopeRejectAlert.skopeRejectAlertSe();
	}

	public void skopeRejectAlertFi() {
		try {
			String scriptPath = "/home/udayvarma/Batch-jobs/BatchJob_38/script/SkopeRejectAlert.sh";
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

	public void skopeRejectAlertSe() {
		try {
			String scriptPath = "/mnt/c/Test-SB/Kroger/shellScript_20723/Jobs_workspace/BatchJob38/scripts/SkopeRejectAlert.sh";
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
