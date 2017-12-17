require 'httparty'
require 'json'

class WeatherByZipCode
  include HTTParty

  attr_accessor :weather_by_zip_data

  base_uri 'https://api.openweathermap.org/data/2.5/weather'

  def get_weather_by_zip_code(code)
    @weather_by_zip_data = JSON.parse(self.class.get("?zip=#{code},us&APPID=14f28a90728e4b499b44fa0ba7a8f971").body)
  end

  def get_all_data_zip
    @weather_by_zip_data
  end

  def get_status_code_zip
    @weather_by_zip_data['cod']
  end

  def get_zip_name_zip
    @weather_by_zip_data['name']
  end

  def get_id_zip
    @weather_by_zip_data['id']
  end

  def get_longitude_zip
    @weather_by_zip_data['coord']['lon']
  end

  def get_latitude_zip
    @weather_by_zip_data['coord']['lat']
  end

  def get_weather_id_zip
    @weather_by_zip_data['weather'].first['id']
  end

  def get_weather_main_zip
    @weather_by_zip_data['weather'].first['main']
  end

  def get_weather_description_zip
    @weather_by_zip_data['weather'].first['description']
  end

  def get_weather_icon_zip
    @weather_by_zip_data['weather'].first['icon']
  end

  def get_base_zip
    @weather_by_zip_data['base']
  end

  def get_main_temperature_zip
    @weather_by_zip_data['main']['temp']
  end

  def get_main_pressure_zip
    @weather_by_zip_data['main']['pressure']
  end

  def get_main_humidity_zip
    @weather_by_zip_data['main']['humidity']
  end

  def get_main_temp_min_zip
    @weather_by_zip_data['main']['temp_min']
  end

  def get_main_temp_max_zip
    @weather_by_zip_data['main']['temp_max']
  end

  def get_visibility_zip
    @weather_by_zip_data['visibility']
  end

  def get_wind_speed_zip
    @weather_by_zip_data['wind']['speed']
  end

  def get_wind_deg_zip
    @weather_by_zip_data['wind']['deg']
  end

  def get_cloud_all_zip
    @weather_by_zip_data['clouds']['all']
  end

  def get_dt_zip
    @weather_by_zip_data['dt']
  end

  def get_sys_type_zip
    @weather_by_zip_data['sys']['type']
  end

  def get_sys_id_zip
    @weather_by_zip_data['sys']['id']
  end

  def get_sys_message_zip
    @weather_by_zip_data['sys']['message']
  end

  def get_sys_country_zip
    @weather_by_zip_data['sys']['country']
  end

  def get_sys_sunrise_zip
    @weather_by_zip_data['sys']['sunrise']
  end

  def get_sys_sunset_zip
    @weather_by_zip_data['sys']['sunset']
  end

end
