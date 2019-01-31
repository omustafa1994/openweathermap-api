require_relative 'services/testing_weather'

#Superclass
class Generator

  def weather
    TestingWeatherData.new
  end
  
end
