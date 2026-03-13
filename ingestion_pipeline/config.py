# stores the nyc open data API url a named constant, renames the script to api_endpoint, the url itself points to nyc's 311 service request dataset
# on the socrata-powered open data portal. erm2-nwe9 is the unique dataset identifier
API_ENDPOINT = "https://data.cityofnewyork.us/resource/erm2-nwe9.json"

# stores the maximum number of rows to fetch from the API in a single request
LIMIT = 50000 
