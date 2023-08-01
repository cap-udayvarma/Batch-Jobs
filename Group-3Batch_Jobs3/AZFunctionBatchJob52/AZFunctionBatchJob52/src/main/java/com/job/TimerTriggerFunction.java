package com.job;

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
        @TimerTrigger(name = "timerInfo", schedule = "30 * * * * *") String timerInfo,
        final ExecutionContext context
    ) {
    	SendEPCSEscalation sendEPCSEscalation = new SendEPCSEscalation();
		sendEPCSEscalation.SendEPCSEscalationFi();
        context.getLogger().info("Java Timer trigger function executed at: " + LocalDateTime.now());
        
    }
}
