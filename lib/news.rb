require "httparty"
require "pry"


class News

  attr_reader :stories

  def initialize
    @data = get_news_data
    @stories = get_top_stories
  end

  def get_top_stories
    stories = []
    10.times do |i|
      result = @data["results"][i]
      stories << {title: result["title"], url: result["url"]}
    end
    stories
  end

  def get_news_data
    data = HTTParty.get("http://api.nytimes.com/svc/topstories/v1/home.json?api-key=#{ENV['NYT_API_KEY']}")
  end


end
