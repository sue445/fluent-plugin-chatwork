# -*- encoding: utf-8 -*-

describe Fluent::ChatworkOutput do
  let(:driver)   { Fluent::Test::OutputTestDriver.new(Fluent::ChatworkOutput, 'test.metrics').configure(config) }
  let(:instance) { driver.instance }

  let(:config) do
    %[
      api_token xxxxxxxxxxxxxxxxxxxx
      room_id   1234567890
      message   some message
      ]
  end

  describe "config" do
    it "should get api_token" do
      expect( instance.api_token ).to eq "xxxxxxxxxxxxxxxxxxxx"
    end

    it "should get room_id" do
      expect( instance.room_id ).to eq "1234567890"
    end

    it "should get message" do
      expect( instance.message ).to eq "some message"
    end
  end

  describe "#emit" do
    let(:record){ {} }

    before do
      allow(instance).to receive(:post_message)
    end

    it "should be called" do
      driver.emit(record)
      expect(driver.run).not_to be_nil
    end
  end

  describe "#generate_message" do
    subject{ instance.generate_message(record: record, time: time, tag: tag) }

    let(:record){ {} }
    let(:time)  { Time.now }
    let(:tag)   { "debug.foo" }

    context "When contain erb format" do
      let(:config) do
        %[
          api_token xxxxxxxxxxxxxxxxxxxx
          room_id   1234567890
          message   <%= record["greeting"] %> ChatWork!
        ]
      end

      let(:record) do
        {
            "greeting" => "Hello"
        }
      end

      it{ should eq "Hello ChatWork!" }
    end

    context "When contain newline character" do
      let(:config) do
        %[
          api_token xxxxxxxxxxxxxxxxxxxx
          room_id   1234567890
          message   1st line\\n2nd line
        ]
      end

      it{ should eq "1st line\n2nd line" }
    end
  end
end
