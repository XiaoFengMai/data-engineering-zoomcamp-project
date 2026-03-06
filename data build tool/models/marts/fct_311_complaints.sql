SELECT
    borough,
    complaint_type,
    COUNT(*) AS complaint_count
FROM {{ ref('stg_311_requests.sql') }}
GROUP BY borough, complaint_type
