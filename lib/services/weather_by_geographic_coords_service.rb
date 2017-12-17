require 'httparty'
require 'json'

class WeatherByGC
  include HTTParty

  attr_accessor :weather_by_gc_data

  base_uri 'https://api.openweathermap.org/data/2.5/weather'

  def initialize(json_file)
    @json_file = JSON.parse(File.read(json_file))
    x = rand (@json_file.length - 1)
    generated_lat = @json_file[x]['CapitalLatitude']
    generated_lon = @json_file[x]['CapitalLongitude']
    get_weather_by_geo_coords(generated_lat,generated_lon)
  end

  def get_weather_by_geo_coords(lat,lon)
    @weather_by_gc_data = JSON.parse(self.class.get("?lat=#{lat}&lon=#{lon}&APPID=14f28a90728e4b499b44fa0ba7a8f971").body)
  end

  def get_all_data_geo
    @weather_by_gc_data
  end

  def get_status_code_geo
    @weather_by_gc_data['cod']
  end

  def get_geo_name_geo
    @weather_by_gc_data['name']
  end

  def get_id_geo
    @weather_by_gc_data['id']
  end

  def get_longitude_geo
    @weather_by_gc_data['coord']['lon']
  end

  def get_latitude_geo
    @weather_by_gc_data['coord']['lat']
  end

  def get_weather_id_geo
    @weather_by_gc_data['weather'].first['id']
  end

  def get_weather_main_geo
    @weather_by_gc_data['weather'].first['main']
  end

  def get_weather_description_geo
    @weather_by_gc_data['weather'].first['description']
  end

  def get_weather_icon_geo
    @weather_by_gc_data['weather'].first['icon']
  end

  def get_base_geo
    @weather_by_gc_data['base']
  end

  def get_main_temperature_geo
    @weather_by_gc_data['main']['temp']
  end

  def get_main_pressure_geo
    @weather_by_gc_data['main']['pressure']
  end

  def get_main_humidity_geo
    @weather_by_gc_data['main']['humidity']
  end

  def get_main_temp_min_geo
    @weather_by_gc_data['main']['temp_min']
  end

  def get_main_temp_max_geo
    @weather_by_gc_data['main']['temp_max']
  end

  def get_main_grnd_level_geo
    @weather_by_gc_data['main']['grnd_level']
  end

  def get_main_sea_level_geo
    @weather_by_gc_data['main']['sea_level']
  end

  def get_visibility_geo
    @weather_by_gc_data['visibility']
  end

  def get_wind_speed_geo
    @weather_by_gc_data['wind']['speed']
  end

  def get_wind_deg_geo
    @weather_by_gc_data['wind']['deg']
  end

  def get_cloud_all_geo
    @weather_by_gc_data['clouds']['all']
  end

  def get_dt_geo
    @weather_by_gc_data['dt']
  end

  def get_sys_type_geo
    @weather_by_gc_data['sys']['type']
  end

  def get_sys_id_geo
    @weather_by_gc_data['sys']['id']
  end

  def get_sys_message_geo
    @weather_by_gc_data['sys']['message']
  end

  def get_sys_country_geo
    @weather_by_gc_data['sys']['country']
  end

  def get_sys_sunrise_geo
    @weather_by_gc_data['sys']['sunrise']
  end

  def get_sys_sunset_geo
    @weather_by_gc_data['sys']['sunset']
  end

end
