# this model creates a cleaner dataset

SELECT
    unique_key,

    DATE(created_date) AS created_date,
    DATE(closed_date) AS closed_date,

    complaint_type,
    descriptor,
    borough,
    agency,

    latitude,
    longitude,

    TIMESTAMP_DIFF(closed_date, created_date, HOUR) AS resolution_time_hours

FROM {{ ref('stg_311_requests') }}
WHERE borough IS NOT NULL
