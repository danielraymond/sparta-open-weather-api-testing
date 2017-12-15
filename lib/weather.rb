require_relative 'services/weather_by_city_name_service'
require_relative 'services/weather_by_city_id_service'

class Weather

  def get_weather_by_city_service
    WeatherByCity.new
  end

  def get_weather_by_id_service
    WeatherByID.new
  end

end
