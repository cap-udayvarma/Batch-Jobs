package com.example;

import java.time.*;
import com.microsoft.azure.functions.annotation.*;
import com.microsoft.azure.functions.*;

/**
 * Azure Functions with Timer trigger.
 */
public class TimerTriggerFunction {
	/**
	 * This function will be invoked periodically according to the specified
	 * schedule.
	 */
	@FunctionName("TimerTrigger-Java")
	public void run(@TimerTrigger(name = "timerInfo", schedule = "30 * * * * *") String timerInfo,
			final ExecutionContext context) {

		String vmIpAddress = "20.106.243.180";

		String vmUsername = "udayvarma";

		String vmPassword = "@Uday9533596417";

		String commandToExecute = "cd /home/udayvarma/Batch-jobs/BatchJob_3/src && java StageCardinal";

		// Execute the command on the VM using SSH

		try {

			SSHUtil.executeCommand(vmIpAddress, vmUsername, vmPassword, commandToExecute);

		} catch (Exception e) {

			context.getLogger().severe("Failed to execute Java project on VM: " + e.getMessage());

		}
		{
			context.getLogger().info("Java Timer trigger function executed at: " + LocalDateTime.now());
		}
	}
}
