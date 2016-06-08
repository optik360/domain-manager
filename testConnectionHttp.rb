require 'godaddy/api'

api = Godaddy::Api.new('VUqpsHVZ_3v7CikmVW4HB2EgxqFtCSz', '3v7GxU3QdmAyL9GSCPmav2')

result = api.get('/v1/domains/available?domain=www.gooogle.ca')

puts result
