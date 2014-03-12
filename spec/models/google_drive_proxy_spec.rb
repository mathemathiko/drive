require 'spec_helper'

describe GoogleDriveProxy do
  describe "initialize" do
    before do
      @proxy = GoogleDriveProxy.new
    end

    context "normal case" do
      it "initialize_client" do
        @proxy.instance_variable_get(:@client).class.should == Google::APIClient
      end
    end
  end
end
