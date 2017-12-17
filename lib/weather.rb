require_relative 'services/weather_by_city_name_service'
require_relative 'services/weather_by_city_id_service'
require_relative 'services/weather_by_geographic_coords_service'
require_relative 'services/weather_by_zip_code_service'

class Weather

  def get_weather_by_city_service(city_file)
    WeatherByCity.new(city_file)
  end

  def get_weather_by_id_service(id_file)
    WeatherByID.new(id_file)
  end

  def get_weather_by_geographic_coordinates
    WeatherByGC.new
  end

  def get_weather_by_zip_code
    WeatherByZipCode.new
  end

end
