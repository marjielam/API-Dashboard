require "httparty"

class Events

  attr_reader :event_list, :city

  def initialize(city)
    @city = city
    @data = get_event_data
    @event_list = create_event_list
  end

  def create_event_list
    event_list = []
    event_data = @data["events"]
    event_data.each do |event|
      event_list << event["title"]
    end
    event_list
  end

  def get_event_data
    data = HTTParty.get("https://api.seatgeek.com/2/events?venue.city=#{@city}&client_id=#{ENV['SEATGEEK_API_KEY']}")
  end

end
