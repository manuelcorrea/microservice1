require 'net/http'

number_of_calls = 9
if(!ARGV[0].nil?)
  number_of_calls = ARGV[0].to_i - 1
end

(0..number_of_calls).each do
  puts Net::HTTP.get('localhost', ARGV[1], 8080)
end



