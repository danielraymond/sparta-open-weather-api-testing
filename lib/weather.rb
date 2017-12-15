require_relative 'services/weather_by_city_name_service'
require_relative 'services/weather_by_city_id_service'
require_relative 'services/weather_by_geographic_coords_service'

class Weather

  def get_weather_by_city_service
    WeatherByCity.new
  end

  def get_weather_by_id_service
    WeatherByID.new
  end

  def get_weather_by_geographic_coordinates
    WeatherByGC.new
  end

end
