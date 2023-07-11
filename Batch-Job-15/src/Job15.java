import java.io.IOException;

public class Job15 {

	public static void main(String[] args) {
		try {
        	String scriptPath = "/home/udayvarma/Shell/Hello world/scripts/";
        	
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
