# Simplest python script to get products using resr api
# Needs guest level access to admin panel(Rest api settings).
# Guest access to rest api is disabled for now (For security reasons.)
# This script needs to be updated to support only admin requests in future.

import requests

url = 'http://newstore.ebizontech.biz/api/rest/products'

response = requests.get(url)

result = response.json()

print(result)

