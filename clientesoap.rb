require 'savon'
client = Savon.client(wsdl: "https://www.dataaccess.com/webservicesserver/NumberConversion.wso?WSDL")
puts "Mostrando as operações desse webservice: "
puts client.operations
puts "\n"
response = client.call(:number_to_words, message: {"ubiNum" => "14"})
puts response.body[ :number_to_words_response][ :numbers_to_words_result => ""]
puts "\n"
