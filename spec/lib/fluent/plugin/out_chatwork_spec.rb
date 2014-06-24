describe Fluent::ChatworkOutput do
  let(:driver)   { Fluent::Test::OutputTestDriver.new(Fluent::ChatworkOutput, 'test.metrics').configure(config) }
  let(:instance) { driver.instance }

  let(:config) do
    %[
      api_token xxxxxxxxxxxxxxxxxxxx
      room_id   1234567890
      body      some message
      ]
  end

  describe "config" do
    it "should get api_token" do
      expect( instance.api_token ).to eq "xxxxxxxxxxxxxxxxxxxx"
    end

    it "should get room_id" do
      expect( instance.room_id ).to eq "1234567890"
    end

    it "should get body" do
      expect( instance.body ).to eq "some message"
    end
  end

  describe "#emit" do
    let(:record){ {} }

    it "should be called" do
      driver.emit(record)
      expect(driver.run).not_to be_nil
    end
  end
end
