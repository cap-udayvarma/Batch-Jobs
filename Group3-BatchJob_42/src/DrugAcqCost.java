
import java.io.IOException;

public class DrugAcqCost {
	public static void main(String[] args) {
		DrugAcqCost drugAcqCost = new DrugAcqCost();
		drugAcqCost.DrugAcqCostFi();
	}
		
		public void DrugAcqCostFi() {
		try {
			String scriptPath = "/home/udayvarma/Batch-jobs/BatchJob_42/script/DrugAcqCost.sh";
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
