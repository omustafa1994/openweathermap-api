require 'json'
require_relative '../lib/generator'
require 'dotenv'

Dotenv.load('.env')

RSpec.configure do |config|
  config.formatter = :documentation
end
