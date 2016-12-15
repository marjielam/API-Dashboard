require "./lib/geolocation"
require "sinatra/base"
require "./lib/weather"
require "./lib/events"
require "./lib/news"
require "pry"

require "dotenv"
Dotenv.load

class Dashboard < Sinatra::Base

  get("/") do
    @ip = request.ip
    @geolocation = Geolocation.new(@ip)
    @weather = Weather.new(42.354,-71.061)
    @events = Events.new("Boston")
    @news = News.new
    erb :dashboard
  end
end
