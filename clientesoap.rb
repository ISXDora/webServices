require 'savon'
client = Savon.client(wsdl: "https://www.dataaccess.com/webservicesserver/NumberConversion.wso?WSDL")
puts "Mostrando as operações desse webservice: "
puts client.operations
puts "\n"
puts "Digite um número em formato decimal, separado por ponto:"
input = gets.chomp
response = client.call(:number_to_dollars, message: {"dNum" => input })
puts "A resposta é: " +  response.body[ :number_to_dollars_response][ :number_to_dollars_result]

puts "\n"
