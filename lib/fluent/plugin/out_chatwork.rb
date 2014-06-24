require "fluent/plugin/out_chatwork/version"
require "chatwork"

module Fluent
  class ChatworkOutput < Fluent::Output
    # First, register the plugin. NAME is the name of this plugin
    # and identifies the plugin in the configuration file.
    Fluent::Plugin.register_output('chatwork', self)

    config_param :api_token, :string
    config_param :room_id  , :string
    config_param :body     , :string

    # This method is called before starting.
    def configure(conf)
      super
      # ...
    end

    # This method is called when starting.
    def start
      super
      # ...
    end

    # This method is called when shutting down.
    def shutdown
      super
      # ...
    end

    # This method is called when an event reaches Fluentd.
    # 'es' is a Fluent::EventStream object that includes multiple events.
    # You can use 'es.each {|time,record| ... }' to retrieve events.
    # 'chain' is an object that manages transactions. Call 'chain.next' at
    # appropriate points and rollback if it raises an exception.
    def emit(tag, es, chain)
      chain.next
      es.each {|time,record|
        post_message
      }
    end

    private
    def post_message
      ChatWork.api_key = @api_token
      ChatWork::Message.create(room_id: @room_id, body: @body)
    end
  end
end
