class JobConfig < Struct.new(:job_class, :options)
end

class ActiveJobCronScheduler
  cron_tab '*/3 * * * *',
           jobs: JobConfig.new(job_class: QueuePool, options: {}), JobConfig.new(job_class: QueuePool, options: {})
end
