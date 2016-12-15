require "spec_helper"

RSpec.describe Events, vcr: true do

  let(:events) { Events.new("Boston") }

  describe "#initialize" do
    it "should be initialized with a @city var" do
      expect(events.city).to eq("Boston")
    end
  end

  describe "#get_event_data" do
    it "returns an HTTP response" do
      expect(events.get_event_data).to be_a(HTTParty::Response)
    end
  end

  describe "@event_list" do
    it "is an Array" do
      expect(events.event_list).to be_a(Array)
    end
  end

end
