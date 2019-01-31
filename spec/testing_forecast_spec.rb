require 'spec_helper'

describe OpenWeatherMaps do 

  context 'Testing of forecast data' do 
    
    before(:all) do
      @api_key = ENV['API_KEY']
      @forecast_data = OpenWeatherMaps.new.forecast
      @forecast_data.retrieve('524901', @api_key)
    end

  end
end