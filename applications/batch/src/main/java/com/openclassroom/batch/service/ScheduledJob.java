package com.openclassroom.batch.service;

import java.util.Date;

import org.springframework.batch.core.Job;
import org.springframework.batch.core.JobParameters;
import org.springframework.batch.core.JobParametersBuilder;
import org.springframework.batch.core.launch.JobLauncher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

// cette classe permet d'éxécuter à intervalle de temps régulier l'unique job du programme (1 fois par jour en l'occurence)
@EnableScheduling
@Component
@PropertySource("classpath:application.properties")
public class ScheduledJob {
	
	@Autowired
    JobLauncher jobLauncher;

	@Autowired
    Job job;

	@Scheduled(cron="${cronExpression}")
    public void startBatchJob() throws Exception{
        JobParameters jobParameters = new JobParametersBuilder()
        .addString("time", new Date().toString()).toJobParameters();

        jobLauncher.run(job, jobParameters);
    }
}
