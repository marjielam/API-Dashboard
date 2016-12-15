require "httparty"
require "pry"

class Weather

  attr_reader :data

  def initialize(lat, long)
    @lat = lat
    @long = long
    @data = get_weather_data
  end

  def temp
    @data["currently"]["temperature"]
  end

  def get_weather_data
    data = HTTParty.get("https://api.darksky.net/forecast/#{ENV['DARKSKY_API_KEY']}/#{@lat.to_s},#{@long.to_s}")
  end

end
