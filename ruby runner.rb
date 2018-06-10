require 'unirest'

response = Unirest.get("http://localhost:3000/change_oil")
data = response.body
puts JSON.pretty_generate(data)