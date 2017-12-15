require 'spec_helper'

describe 'Tests for data parsed from a weather api with data selected by city name' do

  before(:all) do
    @weatherdata = Weather.new.get_weather_by_city_service
    @weatherdata.get_weather_by_city('London')
  end

  it "Should return data in the form of a hash." do
    expect(@weatherdata.get_all_data).to be_kind_of(Hash)
  end

end
