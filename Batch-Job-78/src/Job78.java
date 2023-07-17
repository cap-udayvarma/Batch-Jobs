import java.io.IOException;

public class Job78 {

	public static void main(String[] args) {
		try {
        	String scriptPath = "/home/udayvarma/Batch-jobs/Batch-job-78/scripts/UpdateUserInfo_Central.sh";
        	
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
