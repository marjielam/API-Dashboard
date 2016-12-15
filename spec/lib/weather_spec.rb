require "spec_helper"

RSpec.describe Weather, vcr: true do

  let(:weather) { Weather.new(42.354,-71.061) }

  describe "#temp" do
    it "returns the current temperature" do
      expect(weather.temp).to be_a(Float)
    end
  end
  describe "#get_weather_data" do
    it "returns an HTTP Response" do
      expect(weather.get_weather_data).to be_a(HTTParty::Response)
    end

  end
end
