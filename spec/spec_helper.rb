require 'json'
require_relative '../lib/openweathermap'
require 'dotenv'

# loads api key from .env
Dotenv.load('.env')

RSpec.configure do |config|
  config.formatter = :documentation
end
