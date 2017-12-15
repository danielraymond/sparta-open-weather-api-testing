require 'httparty'
require 'json'

class WeatherByZipCode
  include HTTParty

  attr_accessor :weather_by_zip_code_data

  base_uri 'https://api.openweathermap.org/data/2.5/weather'

  def get_weather_by_zip_code(code)
    @weather_by_zip_code_data = JSON.parse(self.class.get("?zip=#{code},us&APPID=14f28a90728e4b499b44fa0ba7a8f971").body)
  end

  def get_all_data
    @weather_by_zip_code_data
  end

end
