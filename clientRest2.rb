require 'rest-client'
require 'json'


puts "Digite a sigla do país com 2 caracteres:"

code = gets.chomp

url = "https://restcountries.eu/rest/v2/alpha/"


response = RestClient.get "#{url}#{code}?fields=name;"

response.code
response_json = JSON.parse(response)
formated_json = JSON.pretty_generate(response_json)

puts formated_json
