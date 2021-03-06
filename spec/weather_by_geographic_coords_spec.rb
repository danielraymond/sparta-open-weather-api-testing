require 'spec_helper'

describe 'Tests for data parsed from a weather api with data selected by georgraphical coordinates' do

  before(:all) do
    @weatherdata = Weather.new.get_weather_by_geographic_coordinates_service('iso_country_data.json')
  end

  it "print the data at the top" do
    puts @weatherdata.get_all_data_geo
  end

  it "Should return data in the form of a hash." do
    expect(@weatherdata.get_all_data_geo).to be_kind_of(Hash)
  end

  it "Results hash key names should be strings" do
    @weatherdata.get_all_data_geo.each do |i|
      expect(i[0]).to be_kind_of(String)
    end
  end

  it "Status code should equal 200" do
    expect(@weatherdata.get_status_code_geo).to eq(200)
  end

  it "City name should be a string" do
    expect(@weatherdata.get_geo_name_geo).to be_kind_of(String)
  end

  it "City id should be an integer" do
    expect(@weatherdata.get_id_geo).to be_kind_of(Integer)
  end

  it "Longitude and latitude should be floats or integers" do
    expect(@weatherdata.get_longitude_geo).to be_kind_of(Numeric)
    expect(@weatherdata.get_latitude_geo).to be_kind_of(Numeric)
  end

  it "Longitude should be between -180 and 180" do
    expect(@weatherdata.get_longitude_geo).to be_between(-180.0,180.0)
  end

  it "Latitude should be between -90 and 90" do
    expect(@weatherdata.get_latitude_geo).to be_between(-90.0,90.0)
  end

  it "Weather id should be an integer" do
    expect(@weatherdata.get_weather_id_geo).to be_kind_of(Integer)
  end

  it "Weather key main category should be a string" do
    expect(@weatherdata.get_weather_main_geo).to be_kind_of(String)
  end

  it "Weather key description category should be a string" do
    expect(@weatherdata.get_weather_description_geo).to be_kind_of(String)
  end

  it "Weather key icon category should be a string" do
    expect(@weatherdata.get_weather_icon_geo).to be_kind_of(String)
  end

  it "Base key value should be string" do
    expect(@weatherdata.get_base_geo).to be_kind_of(String)
  end

  it "Main temperature should be a float or integer" do
    expect(@weatherdata.get_main_temperature_geo).to be_kind_of(Numeric)
  end

  it "Main pressure should be a float" do
    expect(@weatherdata.get_main_pressure_geo).to be_kind_of(Numeric)
  end

  it "Main humidity should be an integer between 0 and 100" do
    expect(@weatherdata.get_main_humidity_geo).to be_kind_of(Integer)
    expect(@weatherdata.get_main_humidity_geo).to be_between(0.0,100.0)
  end

  it "Main temp_min should be a float" do
    expect(@weatherdata.get_main_temp_min_geo).to be_kind_of(Numeric)
  end

  it "Main temp_max should be a float" do
    expect(@weatherdata.get_main_temp_max_geo).to be_kind_of(Numeric)
  end

  it "Main sea_level should be a float" do
    expect(@weatherdata.get_main_sea_level_geo).to be_kind_of(Numeric).or (be_nil)
  end

  it "Main grnd_level should be a float" do
    expect(@weatherdata.get_main_grnd_level_geo).to be_kind_of(Numeric).or (be_nil)
  end

  it "Visibility should be an integer" do
    expect(@weatherdata.get_visibility_geo).to be_kind_of(Integer).or (be_nil)
  end

  it "Wind speed should be a float" do
    expect(@weatherdata.get_wind_speed_geo).to be_kind_of(Numeric)
  end

  it "Wind deg should be an integer between 0 and 360" do
    expect(@weatherdata.get_wind_deg_geo).to be_kind_of(Numeric).or (be_nil)
    expect(@weatherdata.get_wind_deg_geo).to be_between(0,360).or (be_nil)
  end

  it "Clouds all should be an integer between 0 and 100" do
    expect(@weatherdata.get_cloud_all_geo).to be_kind_of(Integer)
    expect(@weatherdata.get_cloud_all_geo).to be_between(0,100)
  end

  it "dt should be an integer" do
    expect(@weatherdata.get_dt_geo).to be_kind_of(Integer)
  end

  it "sys type should be an integer" do
    expect(@weatherdata.get_sys_type_geo).to be_kind_of(Integer).or (be_nil)
  end

  it "sys id should be an integer" do
    expect(@weatherdata.get_sys_id_geo).to be_kind_of(Integer).or (be_nil)
  end

  it "sys message should be a float" do
    expect(@weatherdata.get_sys_message_geo).to be_kind_of(Float)
  end

  it "sys country should be a string" do
    expect(@weatherdata.get_sys_country_geo).to be_kind_of(String)
  end

  it "sys sunrise should be an integer" do
    expect(@weatherdata.get_sys_sunrise_geo).to be_kind_of(Integer)
  end

  it "sys sunset should be an integer" do
    expect(@weatherdata.get_sys_sunset_geo).to be_kind_of(Integer)
  end

end
