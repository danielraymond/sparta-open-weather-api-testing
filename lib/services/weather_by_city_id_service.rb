require 'httparty'
require 'json'

class WeatherByID
  include HTTParty

  attr_accessor :weather_by_id_data

  base_uri 'https://api.openweathermap.org/data/2.5/weather'

  def get_weather_by_id(id)
    @weather_by_id_data = JSON.parse(self.class.get("?id=#{id}&APPID=14f28a90728e4b499b44fa0ba7a8f971").body)
  end

  def get_all_data
    @weather_by_id_data
  end

end
