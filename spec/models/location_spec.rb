require 'spec_helper'

describe Location do
  shared_examples_for 'needs gmail_api update' do
    it "calls GMaps API to get Lat/Long" do
      HTTParty.should_receive :get
      location.save
    end
  end

  describe "#save" do
    let(:location){ FactoryGirl.create :location }

    context "when coordinates are null" do
      before{ location.update_attributes coordinates: nil }

      it_behaves_like 'needs gmail_api update'
    end

    context "when gmap_url is null" do
      before{ location.update_attributes gmap_url: nil }

      it_behaves_like 'needs gmail_api update'

      it "calls GMaps API to get Lat/Long" do
        HTTParty.should_receive :get
        location.save
      end

      it "saves a google maps url" do
        location.save
        location.gmap_url.should_not be_nil
      end
    end
  end
end
