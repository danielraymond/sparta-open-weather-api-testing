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

  def get_city_name_city
    @weather_by_city_data['name']
  end

  def get_id_city
    @weather_by_city_data['id']
  end

  def get_longitude_city
    @weather_by_city_data['coord']['lon']
  end

  def get_latitude_city
    @weather_by_city_data['coord']['lat']
  end

  def get_weather_id_city
    @weather_by_city_data['weather'].first['id']
  end

  def get_weather_main_city
    @weather_by_city_data['weather'].first['main']
  end

  def get_weather_description_city
    @weather_by_city_data['weather'].first['description']
  end

  def get_weather_icon_city
    @weather_by_city_data['weather'].first['icon']
  end

end

# x = WeatherByCity.new
# puts x.get_weather_by_city('London')
