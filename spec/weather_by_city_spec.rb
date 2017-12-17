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

  it "Results hash key names should be strings" do
    @weatherdata.get_all_data_city.each do |i|
      expect(i[0]).to be_kind_of(String)
    end
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

  it "Longitude should be between -180 and 180" do
    expect(@weatherdata.get_longitude_city).to be_between(-180.0,180.0)
  end

  it "Latitude should be between -90 and 90" do
    expect(@weatherdata.get_latitude_city).to be_between(-90.0,90.0)
  end

  it "Weather id should be an integer" do
    expect(@weatherdata.get_weather_id_city).to be_kind_of(Integer)
  end

  it "Weather key main category should be a string" do
    expect(@weatherdata.get_weather_main_city).to be_kind_of(String)
  end

  it "Weather key description category should be a string" do
    expect(@weatherdata.get_weather_description_city).to be_kind_of(String)
  end

  it "Weather key icon category should be a string" do
    expect(@weatherdata.get_weather_icon_city).to be_kind_of(String)
  end

  it "Base key value should be string" do
    expect(@weatherdata.get_base_city).to be_kind_of(String)
  end

  it "Main temperature should be a float" do
    expect(@weatherdata.get_main_temperature_city).to be_kind_of(Float)
  end

  it "Main pressure should be a float" do
    expect(@weatherdata.get_main_pressure_city).to be_kind_of(Integer)
  end

  it "Main humidity should be an integer between 0 and 100" do
    expect(@weatherdata.get_main_humidity_city).to be_kind_of(Integer)
    expect(@weatherdata.get_main_humidity_city).to be_between(0.0,100.0)
  end

  it "Main temp_min should be a float" do
    expect(@weatherdata.get_main_temp_min_city).to be_kind_of(Float)
  end

  it "Main temp_max should be a float" do
    expect(@weatherdata.get_main_temp_max_city).to be_kind_of(Float)
  end

  it "Visibility should be an integer" do
    expect(@weatherdata.get_visibility_city).to be_kind_of(Integer)
  end

  it "Wind speed should be a float" do
    expect(@weatherdata.get_wind_speed_city).to be_kind_of(Float)
  end

  it "Wind deg should be an integer between 0 and 360" do
    expect(@weatherdata.get_wind_deg_city).to be_kind_of(Integer)
    expect(@weatherdata.get_wind_deg_city).to be_between(0,360)
  end

end
