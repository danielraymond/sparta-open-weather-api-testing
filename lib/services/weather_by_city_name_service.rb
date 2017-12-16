require 'httparty'
require 'json'

class WeatherByCity
  include HTTParty

  attr_accessor :weather_by_city_data

  base_uri 'https://api.openweathermap.org/data/2.5/weather'

  def get_weather_by_city(city)
    @weather_by_city_data = JSON.parse(self.class.get("?q=#{city}&APPID=14f28a90728e4b499b44fa0ba7a8f971").body)
  end

  def get_all_data_city
    @weather_by_city_data
  end

  def get_status_code_city
    @weather_by_city_data['cod']
  end

end

# x = WeatherByCity.new
# puts x.get_weather_by_city('London')
