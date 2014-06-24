require "fluent/plugin/out_chatwork/version"

module Fluent
  class ChatworkOutput < Fluent::Output
    # First, register the plugin. NAME is the name of this plugin
    # and identifies the plugin in the configuration file.
    Fluent::Plugin.register_output('NAME', self)

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
        $stderr.puts "OK!"
      }
    end
  end
end
