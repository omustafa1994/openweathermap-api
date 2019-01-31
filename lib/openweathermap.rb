require_relative 'services/testing_weather'
require_relative 'services/testing_forecast'

#Superclass
class OpenWeatherMaps

  def weather
    TestingWeatherData.new
  end

  def forecast
    TestingForecastData.new
  end
  
end