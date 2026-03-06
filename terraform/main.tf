# create resources (google cloud storage bucket, bigquery dataset, etc)

resource "google_storage_bucket" "data_lake_bucket" {
  name          = var.gcs_bucket_name
  location      = var.region
  storage_class = "STANDARD"
  force_destroy = true

  uniform_bucket_level_access = true

  versioning {
    enabled = true
  }
}




# create data warehouse dataset in bigquery

resource "google_bigquery_dataset" "dataset" {
  dataset_id  = var.bq_dataset_name
  location    = var.region
  description = "NYC 311 analytics dataset"
}

