require 'httparty'
require 'json'

class WeatherByGC
  include HTTParty

  attr_accessor :weather_by_gc_data

  base_uri 'https://api.openweathermap.org/data/2.5/weather'

  def get_weather_by_geo_coords(lat,lon)
    @weather_by_gc_data = JSON.parse(self.class.get("?lat=#{lat}&lon=#{lon}&APPID=14f28a90728e4b499b44fa0ba7a8f971").body)
  end

  def get_all_data
    @weather_by_gc_data
  end

end
