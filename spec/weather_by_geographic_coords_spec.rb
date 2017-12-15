require 'spec_helper'

describe 'Tests for data parsed from a weather api with data selected by georgraphical coordinates' do

  before(:all) do
    @weatherdata = Weather.new.get_weather_by_geographic_coordinates
    @weatherdata.get_weather_by_geo_coords('35', '139')
  end

  it "Should return data in the form of a hash." do
    expect(@weatherdata.get_all_data).to be_kind_of(Hash)
  end

end
