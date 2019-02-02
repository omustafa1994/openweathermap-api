require 'json'
require_relative '../lib/openweathermap'
require 'dotenv'

Dotenv.load('.env')

RSpec.configure do |config|
  config.formatter = :documentation
end
