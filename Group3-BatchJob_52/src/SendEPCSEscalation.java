
import java.io.IOException;

public class SendEPCSEscalation {

	public static void main(String[] args) {
		SendEPCSEscalation sendEPCSEscalation = new SendEPCSEscalation();
		sendEPCSEscalation.SendEPCSEscalationFi();
		
	}
		public void SendEPCSEscalationFi() { 
		try {
			String scriptPath = "/home/udayvarma/Batch-jobs/BatchJob_52/script/SendEPCSEscalation.sh";
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
