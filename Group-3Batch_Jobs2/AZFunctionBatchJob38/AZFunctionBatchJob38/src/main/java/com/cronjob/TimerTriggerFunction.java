package com.cronjob;

import java.time.*;
import com.microsoft.azure.functions.annotation.*;
import com.microsoft.azure.functions.*;

/**
 * Azure Functions with Timer trigger.
 */
public class TimerTriggerFunction {
    /**
     * This function will be invoked periodically according to the specified schedule.
     */
    @FunctionName("TimerTrigger-Java")
    public void run(
        @TimerTrigger(name = "timerInfo", schedule = "0 * * * * *") String timerInfo,
        final ExecutionContext context
    ) {
    	SkopeRejectAlert skopeRejectAlert = new SkopeRejectAlert();
    	skopeRejectAlert.skopeRejectAlertFi();
    	System.out.println("Inside Time Trigeer");
        context.getLogger().info("Java Timer trigger function executed at: " + LocalDateTime.now());
    }
}
