require 'uri'
require 'net/http'
require 'json'

url = URI("https://api.themoviedb.org/3/movie/top_rated?language=en-US&page=1")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true

request = Net::HTTP::Get.new(url)
request["accept"] = 'application/json'
request["Authorization"] = 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI5NmM1YTU3NDhmMjkxYjdlMjIxMDM4NDQyZTRlOWYzNCIsIm5iZiI6MTc0Nzk0NTIzMC43NDU5OTk4LCJzdWIiOiI2ODJmODcwZTRmZjhjZDBmYzc3MmVjNGQiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.EjcVx6_GOW9toISWDFHEaHMPqNVMfgwoG9EUrXgoJ9A'

response = http.request(request)
# puts response.read_body

puts JSON.parse(response.body)['results']
