require 'spec_helper'

describe GoogleConnector do
  describe "initialize" do
    before do
      @connector = GoogleConnector.new
    end

    context "normal case" do
      it "initialize_client" do
        @connector.instance_variable_get(:@client).class.should Google::APIClient
      end
    end
  end
end
