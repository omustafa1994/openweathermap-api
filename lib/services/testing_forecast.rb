require 'httparty'
require 'json'

class TestingForecastData

  include HTTParty
  base_uri 'http://api.openweathermap.org/data/2.5'

 def retrieve(city_id, api_key)
   @json_result = JSON.parse(self.class.get("/forecast?id=#{city_id}&APPID=#{api_key}").body)
 end

#  def get_coord
#   @json_result['coord']
#  end

end