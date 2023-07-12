import java.io.IOException;

public class Job21 {

	public static void main(String[] args) {
		try {
        	String scriptPath = "/mnt/c/Users/upandeti/Desktop/batch job/Batch-job-21/script/run_krem_store_download.sh";
        	
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
