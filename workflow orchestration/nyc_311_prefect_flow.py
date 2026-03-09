from prefect import flow, task
import subprocess

@task
def run_dlt_pipeline():
  subprocess.run(["python", "ingestion_pipeline/nyc_311_pipeline.py"], check=True)

@task
def run_dbt():
    subprocess.run(["dbt", "run"], cwd="data_build_tool/nyc_311_project")

@flow
def nyc_pipeline():
    run_ingestion()
    run_dbt()

nyc_pipeline()
