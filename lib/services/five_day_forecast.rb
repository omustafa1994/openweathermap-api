require 'httparty'
require 'json'

class TestingForecastData

  include HTTParty
  base_uri 'http://api.openweathermap.org/data/2.5'

 def retrieve(city_id, api_key)
   @json_result = JSON.parse(self.class.get("/forecast?id=#{city_id}&APPID=#{api_key}").body)
 end

 def get_cod
  @json_result['cod']
 end

 def get_message
  @json_result['message']
 end

 def get_cnt
  @json_result['cnt']
 end

 def get_list
  @json_result['list']
 end

 def get_list_dt
  get_list[0]['dt']
 end

 def get_list_main
  get_list[0]['main']
 end

 def get_list_main_temp
  arr = []
  get_list.each do |i|
    arr << i['main']['temp']
  end
  arr
 end

end