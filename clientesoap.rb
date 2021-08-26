require 'savon'
client = Savon.client(wsdl: "https://www.dataaccess.com/webservicesserver/NumberConversion.wso?WSDL")
puts "Mostrando as operações desse webservice: "
puts client.operations
puts "\n"
