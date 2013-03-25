require 'spec_helper'

describe Location do
  describe "#save", vcr: {cassette_name: 'geolocate', match_requests_on: [:host, :path]} do
    let(:location){ FactoryGirl.build :location }

    context "when coordinates are null" do
      before{ location.coordinates = nil }

      it "sets coordinates from Google Map API" do
        location.save
        location.coordinates.should == '37.3313214, -122.030667'
      end
    end

    context "when gmap_url is null" do
      before{ location.gmap_url = nil }

      it "saves a google maps url" do
        location.save
        location.gmap_url.should =~ /maps\.google\.com.*#{location.coordinates}/
      end
    end
  end
end
