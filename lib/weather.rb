require_relative './services/weather_by_city_name_service'

class Weather

  def get_weather_by_city
    WeatherByCity.new
  end

end
