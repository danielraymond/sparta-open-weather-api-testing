require 'httparty'
require 'json'
require 'yaml'

class WeatherByID
  include HTTParty

  attr_accessor :weather_by_id_data

  base_uri 'https://api.openweathermap.org/data/2.5/weather'

  def initialize(yaml_file)
    @yaml = YAML.load_file(yaml_file)
    x = rand (@yaml.length-1)
    generated_id = @yaml[x]
    get_weather_by_id(generated_id)
  end

  def get_weather_by_id(id)
    @weather_by_id_data = JSON.parse(self.class.get("?id=#{id}&APPID=14f28a90728e4b499b44fa0ba7a8f971").body)
  end

  def get_all_data_id
    @weather_by_id_data
  end

  def get_status_code_id
    @weather_by_id_data['cod']
  end

  def get_city_name_id
    @weather_by_id_data['name']
  end

  def get_id_id
    @weather_by_id_data['id']
  end

  def get_longitude_id
    @weather_by_id_data['coord']['lon']
  end

  def get_latitude_id
    @weather_by_id_data['coord']['lat']
  end

  def get_weather_id_id
    @weather_by_id_data['weather'].first['id']
  end

  def get_weather_main_id
    @weather_by_id_data['weather'].first['main']
  end

  def get_weather_description_id
    @weather_by_id_data['weather'].first['description']
  end

  def get_weather_icon_id
    @weather_by_id_data['weather'].first['icon']
  end

  def get_base_id
    @weather_by_id_data['base']
  end

  def get_main_temperature_id
    @weather_by_id_data['main']['temp']
  end

  def get_main_pressure_id
    @weather_by_id_data['main']['pressure']
  end

  def get_main_humidity_id
    @weather_by_id_data['main']['humidity']
  end

  def get_main_temp_min_id
    @weather_by_id_data['main']['temp_min']
  end

  def get_main_temp_max_id
    @weather_by_id_data['main']['temp_max']
  end

  def get_visibility_id
    @weather_by_id_data['visibility']
  end

  def get_wind_speed_id
    @weather_by_id_data['wind']['speed']
  end

  def get_wind_deg_id
    @weather_by_id_data['wind']['deg']
  end

  def get_cloud_all_id
    @weather_by_id_data['clouds']['all']
  end

  def get_dt_id
    @weather_by_id_data['dt']
  end

  def get_sys_type_id
    @weather_by_id_data['sys']['type']
  end

  def get_sys_id_id
    @weather_by_id_data['sys']['id']
  end

  def get_sys_message_id
    @weather_by_id_data['sys']['message']
  end

  def get_sys_country_id
    @weather_by_id_data['sys']['country']
  end

  def get_sys_sunrise_id
    @weather_by_id_data['sys']['sunrise']
  end

  def get_sys_sunset_id
    @weather_by_id_data['sys']['sunset']
  end

end

y = WeatherByID.new('city_id.yml')
