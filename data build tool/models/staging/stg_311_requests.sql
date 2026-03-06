
SELECT
    unique_key,
    created_date,
    complaint_type,
    address_type,
    borough,
    agency,
    status,
    latitude,
    longitude
FROM {{ source('nyc_311_raw', 'nyc_311_requests') }}
