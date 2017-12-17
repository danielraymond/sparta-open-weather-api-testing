require 'spec_helper'

describe 'Tests for data parsed from a weather api with data selected by city name' do

  before(:all) do
    @weatherdata = Weather.new.get_weather_by_city_service
    @weatherdata.get_weather_by_city('London')
  end

  it "print the data at the top" do
    puts @weatherdata.get_all_data_city
  end

  it "Should return data in the form of a hash." do
    expect(@weatherdata.get_all_data_city).to be_kind_of(Hash)
  end

  it "Results hash should have 12 keys" do
    expect(@weatherdata.get_all_data_city.length).to eq(12)
  end

  it "Status code should equal 200" do
    expect(@weatherdata.get_status_code_city).to eq(200)
  end

  it "City name should be a string" do
    expect(@weatherdata.get_city_name_city).to be_kind_of(String)
  end

  it "City id should be an integer" do
    expect(@weatherdata.get_id_city).to be_kind_of(Integer)
  end

  it "Longitude and latitude should be floats" do
    expect(@weatherdata.get_longitude_city).to be_kind_of(Float)
    expect(@weatherdata.get_latitude_city).to be_kind_of(Float)
  end

end
