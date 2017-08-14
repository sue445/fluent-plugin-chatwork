# -*- encoding: utf-8 -*-
require "chatwork"
require "fluent/plugin/output"

module Fluent::Plugin
  class ChatworkOutput < Output
    # First, register the plugin. NAME is the name of this plugin
    # and identifies the plugin in the configuration file.
    Fluent::Plugin.register_output('chatwork', self)

    helpers :compat_parameters

    DEFAULT_BUFFER_TYPE = "memory"

    desc "Secret API Token"
    config_param :api_token, :string

    desc "Send message to this room."
    config_param :room_id  , :string

    desc "Message content. Supported erb format and newline character."
    config_param :message  , :string

    desc "Switch non-buffered/buffered plugin"
    config_param :buffered, :bool, default: false

    config_section :buffer do
      config_set_default :@type, DEFAULT_BUFFER_TYPE
      config_set_default :chunk_keys, ['tag']
    end

    # This method is called before starting.
    def configure(conf)
      super
    end

    # This method is called when starting.
    def start
      super
    end

    # This method is called when shutting down.
    def shutdown
      super
    end

    def prefer_buffered_processing
      @buffered
    end

    def formatted_to_msgpack_binary?
      true
    end

    def format(tag, time, record)
      [time, record].to_msgpack
    end

    # This method is called when an event reaches Fluentd.
    # 'es' is a Fluent::EventStream object that includes multiple events.
    # You can use 'es.each {|time,record| ... }' to retrieve events.
    # 'chain' is an object that manages transactions. Call 'chain.next' at
    # appropriate points and rollback if it raises an exception.
    def process(tag, es)
      es.each {|time,record|
        post_message(time: time, record: record, tag: tag)
      }
    end

    def write(chunk)
      tag = chunk.metadata.tag
      chunk.msgpack_each {|time, record|
        post_message(time: time, record: record, tag: tag)
      }
    end

    def post_message(args={})
      body = generate_message(args)
      ChatWork.api_key = @api_token
      ChatWork::Message.create(room_id: @room_id, body: body)
    end

    def generate_message(args={})
      time   = args[:time]
      record = args[:record]
      tag    = args[:tag]

      ERB.new(@message).result(binding).gsub("\\n", "\n")
    end
  end
end
