
SELECT
    unique_key,
    created_date,
    closed_date,
    complaint_type,
    descriptor,
    borough,
    agency,
    status,
    latitude,
    longitude
FROM `YOUR_GCP_PROJECT_ID.nyc_311_raw.service_requests`        # must edit GCP project id here
