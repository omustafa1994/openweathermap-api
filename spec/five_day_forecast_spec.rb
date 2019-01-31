require 'spec_helper'

describe OpenWeatherMaps do 

  context 'Testing of forecast data' do 
    
    before(:all) do
      @api_key = ENV['API_KEY']
      @forecast_data = OpenWeatherMaps.new.forecast
      @forecast_data.retrieve('524901', @api_key)
    end

    it 'should return cod to be a string' do
      expect(@forecast_data.get_cod).to be_kind_of(String)
    end

    it 'should return message to be a float' do
      expect(@forecast_data.get_message).to be_kind_of(Float)
    end

    it 'should return cnt to be an integer' do
      expect(@forecast_data.get_cnt).to be_kind_of(Integer)
    end

    it 'should return list to be an array' do
      expect(@forecast_data.get_list).to be_kind_of(Array)
    end

    it 'should return dt to be an integer' do
      expect(@forecast_data.get_list_dt).to be_kind_of(Integer)
    end

    it 'should return main to be a hash' do
      expect(@forecast_data.get_list_main).to be_kind_of(Hash)
    end

    it 'should return EVERY temp to be a float' do
      @forecast_data.get_list_main_temp.each do |i|
      expect(i).to be_kind_of(Float)
    end
  end

  end
end