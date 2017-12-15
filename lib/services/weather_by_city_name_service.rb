require 'httparty'
require 'json'

class WeatherByCity
  include HTTParty

  base_uri 'https://api.openweathermap.org/data/2.5/weather'

  def get_weather_by_city_data
    p @weather_by_city_data = JSON.parse(self.class.get('?q=London&APPID=14f28a90728e4b499b44fa0ba7a8f971').body)
  end

end
x = WeatherByCity.new
x.get_weather_by_city_data
