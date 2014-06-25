# fluent-plugin-out_chatwork

fluentd output plugin for post to [ChatWork](http://www.chatwork.com/)

[![Gem Version](https://badge.fury.io/rb/fluent-plugin-out_chatwork.svg)](http://badge.fury.io/rb/fluent-plugin-out_chatwork)

## Installation

Add this line to your application's Gemfile:

    gem 'fluent-plugin-out_chatwork'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fluent-plugin-out_chatwork

## Configure

```
<match **>
  type         chatwork
  api_token    YOUR_SECRET_TOKEN
  room_id      0000000000
  message      Hello ChatWork!
</match>
```

* api_token
  * secret api token
* room_id
  * send message to this room
* message
  * message content

## Contributing

1. Fork it ( https://github.com/sue445/fluent-plugin-out_chatwork/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
