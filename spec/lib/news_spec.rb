require "spec_helper"

RSpec.describe News, vcr: true do

  let(:news) { News.new }

  describe "#initialize" do
    it "@stories has a length of 10" do
      expect(news.stories.length).to eq(10)
    end
  end

  describe "#get_news_data" do
    it "should return an HTTParty Response" do
      expect(news.get_news_data).to be_a(HTTParty::Response)
    end
  end

end
