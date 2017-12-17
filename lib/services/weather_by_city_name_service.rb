require 'httparty'
require 'json'


class WeatherByCity
  include HTTParty

  attr_accessor :weather_by_city_data

  base_uri 'https://api.openweathermap.org/data/2.5/weather'

  def initialize(json_file)
    @json_file = JSON.parse(File.read(json_file))
    x = rand (@json_file.length - 1)
    generated_city = @json_file[x]['CapitalName']
    get_weather_by_city(generated_city)
  end

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

  def get_base_city
    @weather_by_city_data['base']
  end

  def get_main_temperature_city
    @weather_by_city_data['main']['temp']
  end

  def get_main_pressure_city
    @weather_by_city_data['main']['pressure']
  end

  def get_main_humidity_city
    @weather_by_city_data['main']['humidity']
  end

  def get_main_temp_min_city
    @weather_by_city_data['main']['temp_min']
  end

  def get_main_temp_max_city
    @weather_by_city_data['main']['temp_max']
  end

  def get_visibility_city
    @weather_by_city_data['visibility']
  end

  def get_wind_speed_city
    @weather_by_city_data['wind']['speed']
  end

  def get_wind_deg_city
    @weather_by_city_data['wind']['deg']
  end

  def get_cloud_all_city
    @weather_by_city_data['clouds']['all']
  end

  def get_dt_city
    @weather_by_city_data['dt']
  end

  def get_sys_type_city
    @weather_by_city_data['sys']['type']
  end

  def get_sys_id_city
    @weather_by_city_data['sys']['id']
  end

  def get_sys_message_city
    @weather_by_city_data['sys']['message']
  end

  def get_sys_country_city
    @weather_by_city_data['sys']['country']
  end

  def get_sys_sunrise_city
    @weather_by_city_data['sys']['sunrise']
  end

  def get_sys_sunset_city
    @weather_by_city_data['sys']['sunset']
  end

end
