require_relative 'services/current_weather'
require_relative 'services/five_day_forecast'

#Superclass
class OpenWeatherMaps

  def weather
    TestingWeatherData.new
  end

  def forecast
    TestingForecastData.new
  end
  
end