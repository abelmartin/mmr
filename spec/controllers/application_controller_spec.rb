require 'spec_helper'

describe ApplicationController do
  describe '#prevent_page_caching' do
    let(:response_obj){ ActionDispatch::Response.new }

    before { controller.stub(response: response_obj) }

    it "adds expected value to Cache-Control key" do
      controller.send(:prevent_caching)
      controller.response.headers['Cache-Control'].should == "no-cache, no-store, must-revalidate"
    end

    it "adds expected value to Pragma key" do
      controller.send(:prevent_caching)
      controller.response.headers['Pragma'].should == "no-cache"
    end

    it "adds expected value to Cache-Control key" do
      controller.send(:prevent_caching)
      controller.response.headers['Expires'].should == "0"
    end
  end
end
