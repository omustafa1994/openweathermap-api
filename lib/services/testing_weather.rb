require 'httparty'
require 'json'

class TestingWeatherData

  include HTTParty
  base_uri 'http://api.openweathermap.org/data/2.5'

 def retrieve(city_id, api_key)
   @json_result = JSON.parse(self.class.get("/weather?id=#{city_id}&APPID=#{api_key}").body)
 end

 def get_coord
  @json_result['coord']
 end

 def get_coord_lon
  get_coord['lon']
 end

 def get_coord_lat
  get_coord['lat']
 end

 def get_weather
  @json_result['weather']
 end

 def get_weather_id
  get_weather[0]['id']
 end

 def get_weather_main
  get_weather[0]['main']
 end

 def get_weather_description
  get_weather[0]['description']
 end

 def get_weather_icon
  get_weather[0]['icon']
 end

 def get_base
  @json_result['base']
 end

 def get_main
  @json_result['main']
 end

 def get_main_temp
  get_main['temp']
 end
 
 def get_main_pressure
  get_main['pressure']
 end

 def get_main_humidity
  get_main['humidity']
 end

 def get_main_temp_min
  get_main['temp_min']
 end

 def get_main_temp_max
  get_main['temp_max']
 end

 def get_visibility
  @json_result['visibility']
 end

 def get_wind
  @json_result['wind']
 end

 def get_wind_speed
  get_wind['speed']
 end

 def get_wind_deg
  get_wind['deg']
 end

 def get_clouds
  @json_result['clouds']
 end

 def get_clouds_all
  get_clouds['all']
 end

 def get_dt
  @json_result['dt']
 end

 def get_sys
  @json_result['sys']
 end

 def get_sys_type
  get_sys['type']
 end

 def get_sys_id
  get_sys['id']
 end

 def get_sys_message
  get_sys['message']
 end

 def get_sys_country
  get_sys['country']
 end

 def get_sys_sunrise
  get_sys['sunrise']
 end

 def get_sys_sunset
  get_sys['sunset']
 end

 def get_id
  @json_result['id']
 end

 def get_name
  @json_result['name']
 end

 def get_cod
  @json_result['cod']
 end














end

# test = TestingData.new
# p test.retrieve('524901')
 