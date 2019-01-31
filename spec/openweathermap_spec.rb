require 'spec_helper'

describe Generator do 

  context 'Testing of postcodes api' do 
    
    before(:all) do
      @api_key = ENV['API_KEY']
      @fixer = Generator.new.weather
      @fixer.retrieve('524901', @api_key)
    end

    it 'should be a hash' do
      expect(@fixer.get_coord).to be_kind_of(Hash)
    end

  end

end
