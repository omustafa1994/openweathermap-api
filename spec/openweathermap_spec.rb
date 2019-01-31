require 'spec_helper'

describe Generator do 

  context 'Testing of postcodes api' do 
    
    before(:all) do
      @api_key = ENV['API_KEY']
      @fixer = Generator.new.weather
      @fixer.retrieve('524901', @api_key)
    end

    it 'should return coord to be a hash' do
      expect(@fixer.get_coord).to be_kind_of(Hash)
    end

    it 'should return lon to be a float' do
      expect(@fixer.get_coord_lon).to be_kind_of(Float)
    end

    it 'should return lat to be a float' do
      expect(@fixer.get_coord_lat).to be_kind_of(Float)
    end

    it 'should return weather to be an array' do
      expect(@fixer.get_weather).to be_kind_of(Array)
    end

    it 'should return id to be an integer' do
      expect(@fixer.get_weather_id).to be_kind_of(Integer)
    end

    it 'should return main to be a string' do
      expect(@fixer.get_weather_main).to be_kind_of(String)
    end

    it 'should return description to be a string' do
      expect(@fixer.get_weather_description).to be_kind_of(String)
    end

    it 'should return icon to be a string' do
      expect(@fixer.get_weather_icon).to be_kind_of(String)
    end

    it 'should return base to be a string' do
      expect(@fixer.get_base).to be_kind_of(String)
    end

    it 'should return main to be a hash' do
      expect(@fixer.get_main).to be_kind_of(Hash)
    end

    it 'should return temp to be a float' do
      expect(@fixer.get_main_temp).to be_kind_of(Float)
    end

    it 'should return pressure to be an integer' do
      expect(@fixer.get_main_pressure).to be_kind_of(Integer)
    end

    it 'should return humidity to be an integer' do
      expect(@fixer.get_main_humidity).to be_kind_of(Integer)
    end

    it 'should return temp_min to be a float' do
      expect(@fixer.get_main_temp_min).to be_kind_of(Float)
    end

    it 'should return wind to be a hash' do
      expect(@fixer.get_wind).to be_kind_of(Hash)
    end

    it 'should return speed to be an integer' do
      expect(@fixer.get_wind_speed).to be_kind_of(Integer)
    end

    it 'should return deg to be an integer' do
      expect(@fixer.get_wind_deg).to be_kind_of(Integer)
    end

    it 'should return clouds to be a hash' do
      expect(@fixer.get_clouds).to be_kind_of(Hash)
    end

    it 'should return all to be an integer' do
      expect(@fixer.get_clouds_all).to be_kind_of(Integer)
    end

    it 'should return dt to be an integer' do
      expect(@fixer.get_dt).to be_kind_of(Integer)
    end

    it 'should return sys to be a hash' do
      expect(@fixer.get_sys).to be_kind_of(Hash)
    end

    it 'should return type to be an integer' do
      expect(@fixer.get_sys_type).to be_kind_of(Integer)
    end

    it 'should return id to be an integer' do
      expect(@fixer.get_sys_id).to be_kind_of(Integer)
    end

    it 'should return message to be a float' do
      expect(@fixer.get_sys_message).to be_kind_of(Float)
    end

    it 'should return country to be a string' do
      expect(@fixer.get_sys_country).to be_kind_of(String)
    end

    it 'should return sunrise to be an integer' do
      expect(@fixer.get_sys_sunrise).to be_kind_of(Integer)
    end

    it 'should return sunset to be an integer' do
      expect(@fixer.get_sys_sunset).to be_kind_of(Integer)
    end

    it 'should return id to be an integer' do
      expect(@fixer.get_id).to be_kind_of(Integer)
    end

    it 'should return name to be a string' do
      expect(@fixer.get_name).to be_kind_of(String)
    end

    it 'should return cod to be an integer' do
      expect(@fixer.get_cod).to be_kind_of(Integer)
    end














  end
end
