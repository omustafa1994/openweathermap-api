require 'httparty'
require 'json'

class TestingData

  include HTTParty
  base_uri 'http://api.openweathermap.org/data/2.5'

 def retrieve(city_id, api_key)
   @json_result = JSON.parse(self.class.get("/weather?id=#{city_id}&APPID=#{api_key}").body)
  #  json_result['result']
 end

 def get_coord
  @json_result['coord']
 end

end

# test = TestingData.new
#  p test.retrieve('524901')
 