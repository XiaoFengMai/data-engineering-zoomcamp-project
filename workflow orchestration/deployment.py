# this schedule runs the pipeline daily at 2am

from nyc_311_flow import nyc_311_flow

if __name__ == "__main__":
    nyc_311_flow.deploy(
        name="nyc-311-daily",
        work_pool_name="default-agent-pool",
        cron="0 2 * * *"
    )
