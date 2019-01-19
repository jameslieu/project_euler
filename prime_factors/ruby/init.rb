require_relative 'lib/prime_factors'
require 'optparse'

options = {}
error_message = "Please enter a valid number"

ARGV << '-h' if ARGV.empty?

OptionParser.new do |parser|
  parser.on("--number NUMBER", "Enter a NUMBER to get it's prime factors") do |number|
    numeric = Float(number) != nil rescue false
    if (!numeric)
      puts error_message
      return
    end

    begin
      number = number.to_i
      results =  PrimeFactors.new(number).get_prime_factors()
      puts results.join(", ")
    rescue
      puts error_message
    end
  end
end.parse!
